
to makeIsosurface()
	tell application "Sinterapt"
		if exists grid "grid 625" of document 1 then
			
			set theGrid to grid "grid 625" of document 1
			make new isosurface in document 1 with properties {name:"conf11", confidence:1.1, threshold:0.5, atomnames:{"Cr"}, grid:theGrid}
		end if
	end tell
end makeIsosurface

my makeIsosurface()
