tell application "iTunes"
	if player state is not playing then
		play
	else
		pause
	end if
end tell