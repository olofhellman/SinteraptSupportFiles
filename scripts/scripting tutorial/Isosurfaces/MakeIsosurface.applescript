tell application "Sinterapt"
	if exists concentration space "CSpace20" of document 1 then
		
		set theCSpace to concentration space "CSpace20" of document 1
		make new isosurface in document 1 with properties {name:"Cr50", confidence:1.0, threshold:0.5, atomnames:{"Cr"}, concentration space:theCSpace}
	else
		display dialog "there is no concentration space named \"CSpace20\""
	end if
end tell