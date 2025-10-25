#### previous topic: [Defining Mass Ranges](DefiningMassRanges.md)    next topic: [Cylinders and Concentration Profiles](Cylinders.md)

## Atomtypes

You may not like the default colors set for atomtypes.  here's how to set new colors:

Each atomtype has a property called "color" 

A color is composed of a red component, a green component, and a blue component.

Here's a script which makes the "fe" atomtype red:

```
tell application "Sinterapt"
	set theColor to {red component:1.0, green component:0.4, blue component:0.4}
	set the color of atomtype "Fe" of document 1 to theColor
end tell
```

#### previous topic: [Defining Mass Ranges](DefiningMassRanges.md)    next topic: [Cylinders and Concentration Profiles](Cylinders.md)
