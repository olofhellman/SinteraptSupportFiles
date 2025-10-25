#### previous topic: [Isosurfaces and Proxigrams](docs/Isosurfaces.md)   next topic: [Scripting In Depth A: Script Editor](docs/ScriptEditor.md)


## Movies

Sinterapt supports exporting a sequence of images taken from a graphics window as a QuickTime movie -- the .mov format

This is accomplished using the scripting interface.  There are three basic commands.

To start filming a movie, tell the graphics window to "start filming"

To record a frame of the movie, tell the graphics window to "record movie frame"

To stop filming a movie, tell the graphics window to "stop filming"

To make the movie interesting, some action can take place between each frame.  Here's a script that records a movie while rotating the view and slowing zooming in

```
tell application "System Events"
	set thepath to get path to documents folder
end tell
tell application "Sinterapt"
	set mag to get magnification of graphics window 1 of document 1
	tell graphics window 1 of document 1
		start filming
		repeat 100 times
			record movie frame
			rotate axially 0.2 vertically 0.5
			set mag to mag * 1.01
			set magnification to mag
			delay 0.5
		end repeat
		stop filming saving in POSIX file thepath
	end tell
end tell
```

You'll notice a few interesting things about this script:

### The location of the saved file

when we issue the "stop filming" command, we also supply a parameter for "saving in" so as to tell the app where the completed movie should be saved.  In this case, we want the file saved in the documents folder.

To get the path to the documents folder, the script uses another application, "System Events" which knows about such things.

However, if this script is run, the file may not actually be saved in the Documents folder, because of the file permissions protections of macOS.  If the "app sandbox" is enabled, the app doesn't actually have permissions to write to your Documents folder, so the file is saved instead inside its "container"

![image](images/SaveMovieResults.png "The result of saving a movie with the app sandbox")

In the above image, the result of the script points to the actual location of the saved file in the app sandbox.  Interestingly, although the script points to a file at the path 

```
"Macintosh HD:Users:<username>:Library:Containers:com.tomographic.sinterapt:Data:Documents:10-25-2025, 12/46 AM-iB1C.mov"
```

you will not find this path looking in the Finder.  Instead, inside the ~Users/<username>/Library/Containers folder there will be a folder called "Sinterapt"

### The rotate command

Graphics windows respond to a "rotate" command.  rotation can be applied axially, vertically and horizontally. The parameter supplied is in units of degrees.

### The delay command

When filming a sequence, it is sometimes useful to pause for a bit to let the app catch up before proceeding.  In this case, some drawing commands can be done asynchronously, so that the app can continue working while a drawing operation is in progress.  Without the delay, it is possible the app will already be trying to apply the next rotation before the previous one is finished, and in this case, it is uncertain which view will be captured when a movie frame is recorded. 

Known issues:
A) The colors in saved movies look washed out.  This seems to be a color space issue -- I am aware of it.
B) The app will crash if the script is run a second time -- i.e. when trying to save a second movie.  I hope to fix this one soon.

#### previous topic: [Isosurfaces and Proxigrams](docs/Isosurfaces.md)   next topic: [Scripting In Depth A: Script Editor](docs/ScriptEditor.md)
