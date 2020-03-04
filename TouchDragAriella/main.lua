-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Ariella
-- Course: ICS2O
-- This program displays images that react to a person's finger

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local girl3 = display.newImageRect("Images/girl3.png", 150, 150)
local girl3Width = girl3.width
local girl3Height = girl3.height

local girl4 = display.newImageRect("Images/girl4.png", 150, 150)
local girl4Width = girl4.width
local girl4height = girl4.height

local girl5 = display.newImageRect("Images/girl5.png", 150.150)
local girl5Width = girl5.width
local girl5Height = girl5.height

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedgirl3 = false
local alreadyTouchedgirl4 = false
local alreadyTouchedgirl5 = false

-- set intial x and y position of myImage
girl3.x = 400
girl3.y = 500

girl4.x = 300
girl4.y =  200

girl5.x = 300
girl5.y = 100

--Function: girl3Listener
-- Input: touch listener
-- Output: none
-- Description: when girl3 is touched, move her 
local function girl3Listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedgirl3 == false) then
			alreadyTouchedgirl3 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedgirl3 == true) ) then
		girl3.x = touch.x
		girl3.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedgirl3 = false
		alreadyTouchedgirl3 = false
	end
end

-- add the respective listeners to each object
girl3:addEventListener("touch", girl3Listener)

--Function: girl4Listener
-- Input: touch listener
-- Output: none
-- Description: when girl4 is touched, move her 
local function girl4Listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedgirl4 == false) then
			alreadyTouchedgirl4 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedgirl4 == true) ) then
		girl4.x = touch.x
		girl4.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedgirl4 = false
		alreadyTouchedgirl4 = false
	end
end

-- add the respective listeners to each object
girl4:addEventListener("touch", girl4Listener)

--Function: girl5Listener
-- Input: touch listener
-- Output: none
-- Description: when girl5 is touched, move her 
local function girl5Listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedgirl5 == false) then
			alreadyTouchedgirl5 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedgirl5 == true) ) then
		girl5.x = touch.x
		girl5.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedgirl5 = false
		alreadyTouchedgirl5 = false
	end
end

-- add the respective listeners to each object
girl5:addEventListener("touch", girl5Listener)