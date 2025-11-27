
to makeCSpace()
	tell application "Sinterapt"
		
		set boxProps to properties of box of document 1
		set cellLength to (x span of boxProps) / 15.0
		
		set dimsx to 1 + ((x span of boxProps) div cellLength)
		set dimsy to 1 + ((y span of boxProps) div cellLength)
		set dimsz to 1 + ((z span of boxProps) div cellLength)
		set dims to {dimsx, dimsy, dimsz}
		set offx to (minimum x of boxProps) - (cellLength * 0.5)
		set offy to (minimum y of boxProps) - (cellLength * 0.5)
		set offz to (minimum z of boxProps) - (cellLength * 0.5)
		set offsetVec to {offx, offy, offz}
		
		make new concentration space in document 1 with properties {name:"cspace 625", cell length:cellLength, offset:offsetVec, griddims:dims, delocalization distance:cellLength * 0.5}
	end tell
end makeCSpace


my makeCSpace()
