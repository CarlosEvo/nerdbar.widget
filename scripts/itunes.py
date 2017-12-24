import os
import subprocess

import psutil
from PyLyrics import *


# Determine if a process is running
def is_running(process_name):
    ls = []
    for process in psutil.process_iter(attrs=['name']):
        ls.append(process.info['name'] == process_name)
    return (any(ls))


# Player state of itunes
def player_state():
    p = subprocess.Popen(
        'osascript -e \'tell application "itunes" to get player state\'',
        stdout=subprocess.PIPE,
        shell=True)
    state = p.stdout.readline().strip()
    return (state)


# Return Line Number in Lyrics
def get_line_number(lyrics, position, duration):
    char_tot = len(lyrics)
    char_number = round(char_tot * position / duration)
    line_number = lyrics[0:char_number - 1].count('\n') + 1
    return line_number


# Get current track info
def get_track_info():
    artist_command = "osascript -e 'tell application \"itunes\" to get artist of current track'"
    track_command = "osascript -e 'tell application \"itunes\" to get name of current track'"
    duration_command = "osascript -e 'tell application \"itunes\" to get duration of current track'"
    position_command = "osascript -e 'tell application \"itunes\" to get player position'"

    artist = subprocess.check_output(
        artist_command, shell=True).decode('utf-8').strip()
    track = subprocess.check_output(
        track_command, shell=True).decode('utf-8').strip()
    position = float(
        subprocess.check_output(position_command, shell=True).decode('utf-8'))
    duration = float(
        subprocess.check_output(duration_command, shell=True).decode('utf-8'))
    return (artist, track, position, duration)


# Get lyrics
def get_lyrics(artist, track):
    pwd = os.path.dirname(os.path.realpath(__file__))
    filename = "/Users/CarlosZhang/.lyrics/" + artist + '::' + track
    if os.path.isfile(filename):
        with open(filename) as handler:
            lyrics = handler.read()
    else:
        lyrics = artist + ' - ' + track

        try:
            lyrics = lyrics + PyLyrics.getLyrics(artist, track)
        except ValueError:
            lyrics = lyrics

        with open(filename, 'w') as handler:
            handler.write(lyrics)
    return (lyrics)


# Return formatted lyrics
def format_lyrics():
    track_info = get_track_info()
    lyrics = get_lyrics(track_info[0], track_info[1])
    line_number = get_line_number(lyrics, track_info[2], track_info[3])
    return (lyrics.split('\n')[line_number - 1])


if is_running('iTunes'):
    if player_state() == b'stopped':
        display = u''
    else:
        if player_state() == b'playing':
            icon = u' '
        else:
            icon = u' '

        lyrics = format_lyrics()

        display = icon + lyrics

else:
    display = u''

print(display)
