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
local incorrectObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectAnswer

-----------------------------------------------------------------------
-- LOCAL FUNCTIONS
------------------------------------------------------------------------

-- CORRECT
local function AskQuestion()
	-- generate 2 random numbers between a max, and a min, number
	randomNumber1 = math.random(0, 8)
	randomNumber2 = math.random(0, 8)

	correctAnswer = randomNumber1 + randomNumber2 

	-- create question in text object
	questionObject.text = randomNumber1 .. "+" ..randomNumber2 .. "="
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion ()
end

local function HideIncorrect()
	incorrectObject.isVisible = true
	AskQuestion ()
end

local function NumericFieldListener( event )

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear the text field
		event.target.text = ""

	elseif event.phase == "submitted"  then

		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the users answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true 
			timer.performWithDelay(4000, HideCorrect)
		
		-- if the users answer is the incorrect answer then:
		elseif (userAnswer == incorrectAnswer) then
			incorrectObject.isVisible = true 
			timer.performWithDelay(4000, HideIncorrect)
		end

	end
end

--------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
--------------------------------------------------------------------------------------------------------------

-- displays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(60/255, 231/255, 14/255)

-- create the correct text object  and make it invisible
correctObject = display.newText( "Correct:)", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(193/255, 231/255, 14/255)
correctObject.isVisible = false

-- create the incorrect text object  and make it invisible
incorrectObject = display.newText( "Incorrect:(", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(32/255, 233/255, 226/255)
incorrectObject.isVisible = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 155, 95)
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

-------------------------------------------------------------------------------------------------------------------
-- FUNCTION CALLS
-------------------------------------------------------------------------------------------------------------------

-- call the function to ask the question
AskQuestion()

---------------------------------------------------------------------------------------------------------------------------
-- LOCAL VARIABLES POINTS 
---------------------------------------------------------------------------------------------------------------------------

local points = 0

-------------------------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
-------------------------------------------------------------------------------------------------------------------------------

--display the amount of points as a text object
pointsText = display.newText("Points = ".. points, display.contentWidth/3, display.contentHeight/3, nil, 50)

if (userAnswer == correctAnswer) then
	--give a point if the user gets the correct answer
	points = points + 1

	--update it in the display object
	pointsText.text = "Points = " .. points 

	if (userAnswer == correctAnswer) then
	  correctObject.isVisible = true 
	  timer.performWithDelay(4000, HideCorrect)
	end

	if (userAnswer == incorrectAnswer) then
	  incorrectObject.isVisible = true 
	  timer.performWithDelay(4000, HideIncorrect)
	end
	

elseif (userAnswer == incorrectAnswer) then
	--minus a point if the user gets the incorrect answer
	points = points - 1

	--update it in the display object
	pointsText.text = "Points = " .. points 
end

