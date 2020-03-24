-- Name: Ariella 
-- Course: ICS2O
-- This pogam displays Hello, World on the iPad simulator and "Hello Ariella!" to the console.
-----------------------------------------------------------------------------------------

-- print a greeting to the console
print ("****Hola Shalissa!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set the color of the background
display.setDefault("background", 102/255, 173/255, 213/255)

-- create a local vaiable
local textObject

-- displays text on the screen at position x = 500 and y = 500 with
-- a default font style and font size of 50
textObject = display.newText( "Hola, Shalissa!", 550, 250, nil, 110 )

-- sets the color to the color of the text
textObject:setTextColor(56/255, 220/255, 45/255)

-- this displays another text that says created by Ariella
textObject = display.newText( "Created By: Ariella:)", 550, 550, nil, 85 )

-- sets the color to the color of the text
textObject:setTextColor(227/255, 164/255, 17/255)
