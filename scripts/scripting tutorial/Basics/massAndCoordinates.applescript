tell application "Sinterapt" 
	if exists document 1 then
		get {mass, coordinates} of ion 9 of document 1
	end if
end tell