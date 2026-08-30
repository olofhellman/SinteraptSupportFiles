#### previous topic: [Graphics Controls](GraphicsControls.md)  next topic: [Exporting Movies](Movies.md)


## Graphics Window

Sinterapt users can control the view of the ion map in the graphics window in a number of ways. 

### Magnification

Using the scroll wheel of a mouse (or the tracking surface of a Magic Mouse) adjusts the magnification up and down.  On a trackpad, a two finger drag is usually the scroll wheel gesture. 

Alternatively, the graphics window has a scriptable magnification property. This script doubles the magnification:

```
tell application "Sinterapt"
	tell graphics window 1 of document 1
		set oldMagnification to get magnification
		set magnification to oldMagnification * 2
	end tell
end tell
```

### Rotation

The angle of view of the ion map can be changed by point and drag -- First, click on the 'Rotate' button in the toolbar, then click and drag in the window

Rotation can also be done via a scroll wheel gesture.  With the shift and control keys down, scroll wheeling (or two finger drag on a trackpad) manipulates the rotation directly.

Alternatively, use the 'rotate' scripting command:

### The rotate command

Graphics windows respond to a *rotate* command.  Rotation can be applied either to the current view direction, in which case the parameters supplied are *axially*, *vertically* and *horizontally*, or with respect to the x y and z axes of the dataset, , in which case the parameters supplied are *around x axis*, *around y axis* and *around z axis*.  The parameter supplied is in units of degrees.  Negative values rotate in a counterclockwise direction.

This script demonstrates each parameter used in its own command:

```
tell application "Sinterapt"
	tell graphics window 1 of document 1
		rotate axially 0.2 
		rotate vertically 0.5
		rotate horizontally 1.2
		rotate around x axis 0.2
		rotate around y axis 0.5
		rotate around z axis 1.2
	end tell
end tell
```

The parameters can also be used in combination:

```
tell application "Sinterapt"
	tell graphics window 1 of document 1
		rotate vertically 0.5 horizontally 1.2
		rotate around x axis 0.2 around y axis 0.5
	end tell
end tell
```

### Translation

With the shift key down, using the scroll wheel of a mouse moves the ion map left/right or up/down.  On a trackpad, a two finger drag is usually the scroll wheel gesture.  

Alternatively, use the 'translate' scripting command:

### The translate command

Graphics windows respond to a *translate* command.  Translation can be applied either before the current rotation is applied, or after.  Applying rotation before rotation means the center of rotation will change, which may not be intuitive. 

To apply translation after rotation, use the parameters *vertically* and *horizontally* to specify up/down and left/right translation, as in the following script:

```
tell application "Sinterapt"
	tell graphics window 1 of document 1
		translate vertically 5 horizontally 5
	end tell
end tell
```

To apply translation before rotation, use the parameters *along x axis*, *along y axis* and *along z axis*, as in the following script:

```
tell application "Sinterapt"
	tell graphics window 1 of document 1
		translate along x axis 5 along z axis 5
	end tell
end tell
```

The parameter supplied for *along x axis*, *along y axis* and *along z axis* is in units of nanometers.
 
#### previous topic: [Graphics Controls](GraphicsControls.md)   next topic: [Exporting Movies](Movies.md)

