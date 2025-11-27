
to setAtomtypeProps(elementName, typeColor, typeSize, typeViz)
	tell application "Sinterapt"
		set theColor to {red component:item 1 of typeColor, green component:item 2 of typeColor, blue component:item 3 of typeColor}
		set the color of atomtype elementName of document 1 to theColor
		set the size of atomtype elementName of document 1 to typeSize
		set the visible of atomtype elementName of document 1 to typeViz
	end tell
end setAtomtypeProps

to makeMassRanges()
	tell application "Sinterapt"
		tell document 1
			make new mass range with properties {lower bound:49, upper bound:55, atom list:{"Cr"}, name:"Cr+"}
			make new mass range with properties {lower bound:57, upper bound:64.5, atom list:{"Ni"}, name:"Ni+"}
			make new mass range with properties {lower bound:64.6, upper bound:65.5, atom list:{"Cu"}, name:"Cu+"}
		end tell
	end tell
end makeMassRanges


my makeMassRanges()
--my setAtomtypeProps("Ni", {0.0, 0.5, 1.0}, 1, true)
--my setAtomtypeProps("Cu", {1.0, 0.2, 0.5}, 1, true)
--my setAtomtypeProps("Cr", {0.3, 1.0, 0.5}, 1, true)

