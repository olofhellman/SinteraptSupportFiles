
## Opening a File

After launching the app, Choose "Open" from the file menu and choose a file in the .pos format.  Alternatively, it is possible to double-click on a .pos file in the Finder -- it will open in Sinterapt if there are no other applications registered for .pos files.  The app only supports .pos files for now, but support for more formats is on the future feature list.

When the file opens, two windows will appear, an inspector window which gives an overview of the objects identified in the file, and a graphics window which displays an ion/atom map.

## The Inspector Window

The inspector window looks like this:

![image](images/FileOpenInspectorWindow.png "The Sinterapt Inspector Window")

The left side of the window shows an overview of the various objects identified in this document.  After opening a .pos file, there are no mass ranges or other geometrical objects defined, so only the ion count is something other than zero.

The right side of the window can display a number of graphs or images, depending on the current "focus". When a .pos file is opened, the focus is the collection of ions in the file, and a mass spectrum is displayed.

The buttons under the mass spectrum adjust the visible range of the mass spectrum.

## The Graphics Window

The graphics window looks like this:

![image](images/FileOpenGraphicsWindow.png "The Sinterapt Graphics Window")

Because there are no mass ranges defined or atomtypes defined, all the ions are displayed in gray.  All of the individual ions are displayed as single-pixel dots.

After clicking on the "rotate" button, clicking and dragging in the window will allow rotation on the ionmap.  Clicking the "Zoom In" and "Zoom Out" buttons will adjust the magnification.  

After a bit of manipulation, the window may look like this:

![image](images/FileOpenGraphicsWindowAfterRotate.png "The Sinterapt Graphics Window")

### Next Topic:   [Using the Scripting Interface](docs/TheScriptingInterface.md)