-- Name: Ariella 
-- Course: ICS2O
-- This pogam displays Hello, World on the iPad simulator and "Hello Ariella!" to the console.
-----------------------------------------------------------------------------------------

-- print a greeting to the console
print ("****Hello Ariella!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set the color of the background
display.setDefault("background", 203/255, 61/255, 225/255)

-- create a local vaiable
local textObject

-- displays text on the screen at position x = 500 and y = 500 with
-- a default font style and font size of 50
textObject = display.newText( "Hello, Ariella!", 500, 500, nil, 50 )

-- sets the color to the color of the text
textObject:setTextColor(189/255, 0/255, 32/255)
