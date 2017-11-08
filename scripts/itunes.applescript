on isRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end isRunning

set itnRunning to isRunning("iTunes")
if itnRunning then
	set textLength to 17
	tell application "iTunes"
		if player state is not stopped then
			
			set curName to (get name of current track)

			if length of curName is not less than textLength then
				set curName to (text 1 thru textLength of curName) & "..."
			end if

			if player state is playing then
				set icon to " "
			else
				set icon to " "
			end if

			try
				set curArtist to (get artist of current track)
				if length of curArtist is not less than textLength then
					set curArtist to (text 1 thru textLength of curArtist) & "..."
				end if
				set display to icon & curName & " - " & curArtist
			on error
				set display to icon & curName
			end try

		else
			set display to " "
		end if
	end tell

else
	set display to ""
end if
return display
