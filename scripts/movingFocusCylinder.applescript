to myDialog(theText)
	display dialog theText
end myDialog

to moveTheCylinder()
	tell application "Sinterapt"
		set theFocus to get graph focus of inspector window 1
		if class of theFocus is cylinder then
			set {myX, myY, myZ} to position of theFocus
			repeat with n from 1 to 20
				set position of theFocus to {myX - n, myY, myZ}
				
				-- adding a delay here explicitly makes the code run slower
				-- so that users can see what is happening in this loop
				delay 2
			end repeat
		else
			my myDialog("Focus is not a cylinder")
		end if
	end tell
end moveTheCylinder

my moveTheCylinder()