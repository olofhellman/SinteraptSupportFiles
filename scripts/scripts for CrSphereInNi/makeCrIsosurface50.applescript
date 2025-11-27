
to makeIsosurface()
	tell application "Sinterapt"
		if exists concentration space "cspace 625" of document 1 then
			
			set theCSpace to concentration space "cspace 625" of document 1
			make new isosurface in document 1 with properties {name:"conf11", confidence:1.1, threshold:0.5, atomnames:{"Cr"}, concentration space:theCSpace}
		end if
	end tell
end makeIsosurface

my makeIsosurface()
