
set theText to ""
tell application "Sinterapt"
	if exists document 1 then
		set theCount to count ions of document 1
		set theName to name of document 1
		set theText to (("document " & theName as text) & " has " & theCount as text) & " ions"
	else
		set theText to "there is no document 1" 
	end if
end tell
tell application "System Events"
	display dialog theText
end tell
