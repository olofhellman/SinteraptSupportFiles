tell application "Sinterapt"
	if exists grid "Grid20" of document 1 then
		
		set theGrid to grid "Grid20" of document 1
		make new isosurface in document 1 with properties {name:"Cr50", confidence:1.0, threshold:0.5, atomnames:{"Cr"}, grid:theGrid}
	else
		display dialog "there is no grid named \"Grid20\""
	end if
end tell