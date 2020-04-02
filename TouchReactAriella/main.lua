-- Title: Touch and React
-- Name: Ariella Harlequin
-- Course: ICS2O
-- This program shows two images that when clicked shows text and 
-- the second image
-----------------------------------------------------------------------------

-- set background colour
display.setDefault("background", 63/255, 155/255, 129/255)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--------------------------------------------------------------------------------------------------
--Sounds
----------------------------------------------------------------------------------------------------------

-- Boing sound effect
local boingSound = audio.play( "Sounds/BoingSoundEffect.mp3" )
local boingSoundChannel

-- create blue button, set its position and make it invisible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create the text object, set it's position and make it invisible 
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

local questionMark = display.newImageRect("Images/questionmark.png", 220, 90)
questionMark.x = display.contentWidth/2
questionMark.y = display.contentHeight/4 

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when red button is clicked, it will make
-- the text appear with the red button, and make the blue 
-- button disappear.
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
        questionMark.isVisible = false
    end

    if (touch.phase == "ended") then
    	blueButton.isVisible = false
    	redButton.isVisible = true 
    	textObject.isVisible = true
        questionMark.isVisible = true
    end
end

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)

-- Function: RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: when green button is clicked, it will make
-- the text appear with the green button, and make the red 
-- button disappear.
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = true
        questionMark.isVisible = true
    end

    if (touch.phase == "ended") then
    	redButton.isVisible = false
    	blueButton.isVisible = true
    	textObject.isVisible = false
        questionMark.isVisible = false

        -- play sound when the button is pressed
        boingSoundChannel = audio.play(boingSound)
    end
end

-- add the respective listeners to each object
redButton:addEventListener("touch", RedButtonListener)


-- Function: QuestionMarkListener
-- Input: touch listener
-- Output: none
-- Description: when green button is clicked, it will make
-- the text appear with the green button, and make the question mark  
-- button disappear.
local function QuestionMarkListener(touch)
    if (touch.phase == "began") then
        redButton.isVisible = true
        blueButton.isVisible = false
        textObject.isVisible = true
        questionMark.isVisible = false   
    end

    if (touch.phase == "ended") then
        questionmark.isVisible = true
        blueButton.isVisible = false
        textObject.isVisible = false
        questionMark.isVisible = false 

        -- play sound when the button is pressed
        boingSoundChannel = audio.play(boingSound) 
    end
end

-- add the respective listeners to each object
questionMark:addEventListener("touch", QuestionMarkListener)