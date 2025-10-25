tell application "Sinterapt"
	set thePosition to {0, 0, 100}
	set theNormal to {0, 0, 1}
	set theThickness to 20
	tell document 1
		make new plane with properties {name:"Plane t10", position:thePosition, normal:theNormal, thickness:theThickness}
	end tell
end tell