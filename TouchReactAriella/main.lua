-- Title: Touch and React
-- Name: Ariella Harlequin
-- Course: ICS2O
-- This program shows two images that when clicked shows text and 
-- the second image
-----------------------------------------------------------------------------

-- set background colour
display.setDefault ("backround", 63/255, 155/255, 129/255)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it invisible
local redButton = display.newImageRect("Images/red_x.png", 198,96)
redButton.x = display.contentWidth/2
redButton.y = displaycontentHeight/2
redButton.isVisible = true

-- create red button, set its position and make it invisible
local greenButton = display.newImageRect("Images/checkmark.png", 198,96)
redButton.x = display.contentWidth/2
redButton.y = displaycontentHeight/2
redButton.isVisible = false

-- create the text object, set it's position and make it invisible 
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = displaycontentHeight/2
textObject: setTextColour (1, 1, 0)
textObject.isVisible = false