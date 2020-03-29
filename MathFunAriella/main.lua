-- Title: MathFun
-- Name: Ariella Harlequin
-- Course: ICS2O
-- This program asks the user four different types of math questions on the screen for the user to answer.

-------------------------------------------------------------------
-- LOCAL VAARIABLES
-------------------------------------------------------------------
-- create local variables 
local questionObject
local correctObject
local incorrectObject
local randomOperator
local numericField
local userAnswer
local correctAnswer
local incorrectAnswer

------------------------------------------------------------------------------------
-- FUNCTIONS
------------------------------------------------------------------------------------

-- create the questions and boolean expressions
local function AskQuestion()
	-- generate a random number between 1 and 4 
	-- *** MAKE SURE TO DECLARE THIS VARIABLE ABOVE
	randomOperator = math.random(1,2,3,4)
	
	---------------------------------------------------------------------------------------------
	-- ADDITION 
	---------------------------------------------------------------------------------------------
	-- if the random operator is 1, then do addition
    if (randomOperator == 1) then

		-- calculate the correct answer
		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="
	end

	local function HideCorrect()
		correctObject.isVisible = false
		AskQuestion()
	end

	local function NumericFieldListener(event)
		
		-- user begins editing "numericField"
		if ( event.phase == "began" ) then

			--clear the text field 
			event.target.text = ""
	
		elseif event.phase == "submitted" then

			-- when the answer is submitted (enter key is pressed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer is the correct answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			
			-- if the user answer is incorrect 
			elseif (userAnswer == incorrectAnswer) then
				incorrectObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			end
		end

	end

	----------------------------------------------------------------------------------------------------------
	-- OBJECT CREATION
	-----------------------------------------------------------------------------------------------------------

	-- displays a question and sets the color
	questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
	questionObject:setTextColor(32/255, 233/255, 226/255)

	-- create the correct text object and make it invisible
	correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	correctObject:setTextColor(37/255, 233/255, 32/255)
	correctObject.isVisible = false

	-- create the incorrect text object an make it invisible
	incorrectObject = display.newText("Incorrect", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	incorrectObject:setTextColor(45/255, 32/255, 233/255)
	incorrectObject.isVisible = false

 --------------------------------------------------------------------------------------------------------------
	-- SUBTRACTION 
 --------------------------------------------------------------------------------------------------------------
	-- otherwise, if the random operation is 2, do subtraction
	if (randomOperator == 2) then
		
		-- calculate the correct answer
		correctAnswer = randomNumber1 - randomNumber2

		-- create question in text object 
		questionObject.text = randomNumber1 .. "-" .. randomNumber2 .. "="

		-- if the answer is negative then 
		-- round the number to nearest positive
		print( math.round( -0.1 ) )
	end

	local function HideCorrect()
		correctObject.isVisible = false
		AskQuestion()
	end

	local function NumericFieldListener(event)
		
		-- user begins editing "numericField"
		if ( event.phase == "began" ) then

			--clear the text field 
			event.target.text = ""
	
		elseif event.phase == "submitted" then

			-- when the answer is submitted (enter key is pressed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer is answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			
			-- if the user answer is incorrect 
			elseif (userAnswer == incorrectAnswer) then
				incorrectObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			end
		end

	end

	----------------------------------------------------------------------------------------------------------
	-- OBJECT CREATION
	-----------------------------------------------------------------------------------------------------------

	-- displays a question and sets the color
	questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
	questionObject:setTextColor(232/255, 32/255, 233/255)

	-- create the correct text object and make it invisible
	correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	correctObject:setTextColor(233/255, 32/255, 173/255)
	correctObject.isVisible = false

	-- create the incorrect text object an make it invisible
	incorrectObject = display.newText("Incorrect", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	incorrectObject:setTextColor(233/255, 32/255, 116/255)
	incorrectObject.isVisible = false

 -------------------------------------------------------------------------------------------------------------------
	-- MULTIPLICATION 
 -------------------------------------------------------------------------------------------------------------------
	-- if the random operation is 3, do multiplication
	if (randomOperator == 3) then
		
		-- calculate the correct answer
		correctAnswer = randomNumber1 * randomNumber2

		-- create question in text object 
		questionObject.text = randomNumber1 .. "*" .. randomNumber2 .. "="
	end

	local function HideCorrect()
		correctObject.isVisible = false
		AskQuestion()
	end

	local function NumericFieldListener(event)
		
		-- user begins editing "numericField"
		if ( event.phase == "began" ) then

			--clear the text field 
			event.target.text = ""
	
		elseif event.phase == "submitted" then

			-- when the answer is submitted (enter key is pressed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer is answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			
			-- if the user answer is incorrect 
			elseif (userAnswer == incorrectAnswer) then
				incorrectObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			end
		end

	end

	----------------------------------------------------------------------------------------------------------
	-- OBJECT CREATION
	-----------------------------------------------------------------------------------------------------------

	-- displays a question and sets the color
	questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
	questionObject:setTextColor(179/255, 42/255, 99/255)

	-- create the correct text object and make it invisible
	correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	correctObject:setTextColor(142/255, 42/255, 179/255)
	correctObject.isVisible = false

	-- create the incorrect text object an make it invisible
	incorrectObject = display.newText("Incorrect", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	incorrectObject:setTextColor(113/255, 144/255, 207/255)
	incorrectObject.isVisible = false

 ---------------------------------------------------------------------------------------------------------------------
	-- DIVISION 
 ---------------------------------------------------------------------------------------------------------------------
	-- otherwise, if the random operation is 4, do division
	if (randomOperator == 4) then
		
		-- calculate the correct answer
		correctAnswer = randomNumber1 / randomNumber2

		-- create question in text object 
		questionObject.text = randomNumber1 .. "/" .. randomNumber2 .. "="

		-- round the answer to the first decimal place
		print( math.round( 0.1 ) )
	end

	local function HideCorrect()
		correctObject.isVisible = false
		AskQuestion()
	end

	local function NumericFieldListener(event)
		
		-- user begins editing "numericField"
		if ( event.phase == "began" ) then

			--clear the text field 
			event.target.text = ""
	
		elseif event.phase == "submitted" then

			-- when the answer is submitted (enter key is pressed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer is answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			
			-- if the user answer is incorrect 
			elseif (userAnswer == incorrectAnswer) then
				incorrectObject.isVisible = true
				timer.performWithDelay(3000, HideCorrect)
			end
		end

	end

	----------------------------------------------------------------------------------------------------------
	-- OBJECT CREATION
	-----------------------------------------------------------------------------------------------------------

	-- displays a question and sets the color
	questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
	questionObject:setTextColor(113/255, 207/255, 139/255)

	-- create the correct text object and make it invisible
	correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	correctObject:setTextColor(254/255, 78/255, 1/255)
	correctObject.isVisible = false

	-- create the incorrect text object an make it invisible
	incorrectObject = display.newText("Incorrect", display.contentWidth/2, display.contentHeight*2/3, nil, 55)
	incorrectObject:setTextColor(67/255, 146/255, 89/255)
	incorrectObject.isVisible = false

	---------------------------------------------------------------------------------------------------------------------------------
	--  FUNCTION CALLS 
	---------------------------------------------------------------------------------------------------------------------------------

	-- call the function to ask one of the questions above
	AskQuestion()
end

------------------------------------------------------------------------------------------------------
-- VARIABLES
---------------------------------------------------------------------------------------------------------------

-- variables for the timer
--local totalSeconds = 5
--local secondsLeft = 5
--local clockText
--local countDownTimer

--local lives = 3
--local heart1
--local heart2 
--local incorrectObject
--local pointsObject
--local points 

-----------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION CALLS FOR TIMER AND LIVES
-----------------------------------------------------------------------------------------------------------------------------------------------------

--local function UpdateTime()
	
	--decrement the number of seconds 
	--secondsLeft = secondsLeft - 1 

	-- display the number of seconds left in the clock object 
	--clockText.text = secondsLeft .. ""

	--if (secondsLeft == 0) then
		-- reset the number of seconds left 
		--secondsLeft = totalSeconds
		--lives = lives - 1


		--if (lives == 2) then
			--heart2.isVisible = false
		--elseif (lives == 1) then
			--heart1.isVisible = false
		--end
		
		-- call the function to ask one of the questions above
		--AskQuestion()
	--end
--end

-- function that calls the timer
--local function StartTimer()
	-- create a countdown timer that loops infinitely
	--countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
--end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- create the lives to display on the screen
--heart1 = display