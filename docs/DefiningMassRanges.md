###previous topic: [Using the Scripting Interface](docs/TheScriptingInterface.md)


##Defining Mass Ranges

The FeCrSpinodal sample file provided with this repo is the output of a Spinodal decomposition simulation.  It only requires 2 mass ranges. Here's a script that defines them:

```
tell application "Sinterapt"
    tell document 1
        make new mass range with properties {lower bound:49, upper bound:55, atom list:{"Cr"}, name:"Cr+"}
        make new mass range with properties {lower bound:57, upper bound:65, atom list:{"Fe"}, name:"Fe+"}
    end tell
end tell
```
 
After running this script, you'll notice a few things happend.

The inspector window now tells us that there are two Mass Ranges and two Atomtypes in the document.

The graphics window now displays different colors for the different ions.  It should look something like:

![image](images/SpinodalGraphicsWindowColors.png "The spinodal structure seen in the graphics window")

The "result" of the script shown in the bottom of the Script Editor window will be something like 

```
mass range id 28 of document id 15 of application "Sinterapt"
```   

the script consisted of two lines, each of which was a different command. The result shown only shows the result from the last command.  Because the command was "make new mass range ...", the result of that command is a reference to the mass range that was created. 

You may notice, that even though there was no explicit command to make an atomtype, two atomtypes were created.  This is because each mass range implicitly contained a reference to an atomtype in its "atom list" property.  When a corresponding atom type cannot be found, it is created automatically

###next topic: [Atomtypes](docs/Atomtypes.md)
