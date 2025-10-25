-- this script assumes you have a plane named "Plane t10" 

tell application "Sinterapt"
	tell document 1
		if exists plane "Plane t10" then
			set the selection to plane "Plane t10"
		else
			display dialog "there is no plane named \"Plane t10"
		end if
	end tell
end tell