tell application "System Events"
	set thepath to get path to documents folder
end tell
tell application "Sinterapt"
	set mag to get magnification of graphics window 1 of document 1
	tell graphics window 1 of document 1
		start filming
		repeat 20 times
			record movie frame
			rotate axially 0.2 vertically 0.5
			set mag to mag * 1.01
			set magnification to mag
			delay 0.5
		end repeat
		stop filming saving in POSIX file thepath
	end tell
end tell