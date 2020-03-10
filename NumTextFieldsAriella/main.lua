-- Title: NumericTextFields
-- Name: Ariella Harlequin
-- Course: ICS2O/3C
-- This program displays a question with a numeric text field.
-------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 63/255, 155/255, 129/255)

-----------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------

-- create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

-----------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max, and a min, number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2 

	-- create question in text object
	questionObject.text = randomNumber1 .. "+" ..randomNumber2 .. "="
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion ()
end

local function NumericFieldListener( event )

	-- User begins editing "numericField"
	if ( event.phase -- "began")