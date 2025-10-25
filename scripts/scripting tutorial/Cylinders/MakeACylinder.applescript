tell application "Sinterapt"
	tell document 1
	    set thePosition to {0.0, 0.0, 50.0}
	    set theDirection to {1.0, 1.0, 0.0}
	    set theRadius to {20.0}
		make new cylinder with properties {name: "Cyl Radius 20", position: thePosition, direction: theDirection, radius: theRadius}
	end tell
end tell