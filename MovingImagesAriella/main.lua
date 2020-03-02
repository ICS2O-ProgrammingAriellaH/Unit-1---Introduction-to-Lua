-- Title: MovingObjects
-- Name: Ariella
-- Course: ICS2O/3C
-- This program moves a beetleship across the 
-- screen and then makes it fade in.I added
-- a second object that moves in a different
-- direction, fades out and grows in size 


-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 4

-- background image with width and length
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the intial x and y of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--Function: MovieShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveBeetleShip(event)
	-- add the scroll to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparancy of the ship every time it moves so that it fades out 
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveBeetleShip)

-- character image with width and height
local girl4 = display.newImageRect("Images/girl4.png", 200, 200)

-- set the image to be transparent
girl4.alpha = 0

-- set the intial x and y of girl4
girl4.x = 1000
girl4.y = display.contentHeight/2

--Function: MovieShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function Movegirl4(event)
	-- add the scroll to the x-value of the ship
	girl4.x = girl4.x - scrollSpeed
	-- change the transparancy of the ship every time it moves so that it fades out 
	girl4.alpha = girl4.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", Movegirl4)
