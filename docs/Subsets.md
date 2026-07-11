#### previous topic: [Isosurfaces and Proxigrams](docs/Isosurfaces.md)   next topic: [Graphics Controls](docs/GraphicsControls.md)

## Subset

A subset object defines a subset of a document's ion.  It is like a selection, but persistent.

Here's a script which creates a subset from the current selection: 

```
tell application "Sinterapt"
	tell document 1

	    make new subset with data selected ion indices with properties {name:"Sel"}
		
	end tell
end tell
```

When the subset has been created has been created, you'll notice the following:

- The subset now appears as an item in the "Graph Focus" dropdown of the inspector.  If selected, a mass spectrum is shown from its ions

A subset exposes its ions as scriptable objects.  So for example, the number of ions in the subset is returned if they are counted

```
tell application "Sinterapt"
	tell document 1

		count ions of subset "Sel"
		
	end tell
end tell```

#### previous topic: [Isosurfaces and Proxigrams](docs/Isosurfaces.md) next topic: [Graphics Controls](docs/GraphicsControls.md)
