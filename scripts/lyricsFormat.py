#!/usr/local/bin/python3

import os
import subprocess


# Return Line Number in Lyrics
def get_line_number(lyrics, position, duration):
    char_tot = len(lyrics)
    char_number = round(char_tot * position / duration)
    line_number = lyrics[0:char_number - 1].count('\n') + 1
    return line_number


# Get current track info
def get_track_info():
    name_command = "echo \"$(osascript -e 'tell application \"itunes\" to get name of current track')::$(osascript -e 'tell application \"itunes\" to get artist of current track')\""
    duration_command = "osascript -e 'tell application \"itunes\" to get duration of current track'"
    position_command = "osascript -e 'tell application \"itunes\" to get player position'"
    name = subprocess.check_output(
        name_command, shell=True).decode('utf-8').strip()
    position = float(
        subprocess.check_output(position_command, shell=True).decode('utf-8'))
    duration = float(
        subprocess.check_output(duration_command, shell=True).decode('utf-8'))
    return (name, position, duration)


# Get lyrics
def get_lyrics(name):
    pwd = os.path.dirname(os.path.realpath(__file__))
    filename = "/Users/CarlosZhang/.lyrics/" + name
    if os.path.isfile(filename):
        with open(filename) as handler:
            lyrics = handler.read()
    else:
        lyrics = subprocess.check_output(
            pwd + '/lyrics.sh itunes', shell=True).decode('utf-8')
        lyrics = filter(lambda x: not re.match(r'^\s*$', x),
                        name + "\n" + lyrics)
        with open(filename, 'w') as handler:
            handler.write(lyrics)
    return (lyrics)


# Main
track_info = get_track_info()
lyrics = get_lyrics(track_info[0])
line_number = get_line_number(lyrics, track_info[1], track_info[2])
print(lyrics.split('\n')[line_number])
