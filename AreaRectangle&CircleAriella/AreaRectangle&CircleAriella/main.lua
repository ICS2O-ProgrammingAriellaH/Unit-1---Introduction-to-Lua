-- Title: AreaOfRectangleAndCircle
-- Name: Ariella Harlequin
-- Course: ICS2O
-- This program shows the area of two shapes, a rectangle and a circle.
-----------------------------------------------------------------------------------------
-- create my local variables 
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle 
local myCircle
local widthOfCircle = 350
local heightOfCircle = 200
local areaOfCircle 
------------------------------------------------------------------------------------------------
-- set the background colour 
display.setDefault("background", /, /, /)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle with half the width and length of the screen
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its x, y, position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- anchor the circle
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 20
myCircle.y = 20

-- set the width of the border 
myRectangle.strokeWidth = 20

-- set the width border
myCircle.strokeWidth = 20

-- set the color of the rectangle
myRectangle:setFillColor(/, /, /)

-- set the colour of the circle
myCircle:setFillColor(/, /, /)

-- set the colour of the border
myRectangle:setStrokeColor(0, 1, 0)

-- set the colour of the circle's border
myCircle:setStrokeColor(0, 1, 0)

-- calculate the area 
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- calculate the are of the circle 
areaOfCircle = 