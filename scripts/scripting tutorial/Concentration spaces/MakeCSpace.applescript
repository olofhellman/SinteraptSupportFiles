set delocalization to 15
set celllength to 20

tell application "Sinterapt"
	set boxProps to properties of box of document 1
	
	set dimsx to 1 + ((x span of boxProps) div celllength)
	set dimsy to 1 + ((y span of boxProps) div celllength)
	set dimsz to 1 + ((z span of boxProps) div celllength)
	set dims to {dimsx, dimsy, dimsz}
	set offx to (minimum x of boxProps) - (celllength * 0.5)
	set offy to (minimum y of boxProps) - (celllength * 0.5)
	set offz to (minimum z of boxProps) - (celllength * 0.5)
	set offsetVec to {offx, offy, offz}
	
	tell document 1
		set cs to make new concentration space with properties {name: "CSpace20", cell length:celllength, dimensions:dims, offset:offsetVec, delocalization distance:delocalization}
	end tell
end tell