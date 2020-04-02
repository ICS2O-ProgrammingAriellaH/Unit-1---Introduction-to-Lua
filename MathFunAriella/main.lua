-- Title: MathFun
-- Name: Ariella Harlequin
-- Course: ICS2O
-- This program asks the user four different types of math questions on the screen for the user to answer.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 63/255, 155/255, 129/255)

-------------------------------------------------------------------
-- LOCAL VARIABLES
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

------------------------------------------------------------------------------------------------------
-- VARIABLES
---------------------------------------------------------------------------------------------------------------

local totalSeconds = 5
local secondsLeft = 5
local clockText
local countDownTimer

-- variables for the timer
local lives = 3
local heart1
local heart2 
local incorrectObject
local pointsObject
local points 

-----------------------------------------------------------------------------------------------
--SOUNDS
-------------------------------------------------------------------------------------------------

local correctSound = audio.loadSound( "Sounds/correctSound.mp3" )
local correctSoundChannel

local wrongSound = audio.loadSound( "Sounds/wrongSound.mp3" )
local wrongSoundChannel

local loseSound = audio.loadSound( "Sounds/loseSound.mp3" )
local loseSoundChannel
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
				
				correctSoundChannel = audio.play(correctSound)
				
				timer.performWithDelay(3000, HideCorrect)
			
			-- if the user answer is incorrect 
			elseif (userAnswer == incorrectAnswer) then
				incorrectObject.isVisible = true

				wrongSoundChannel = audio.play(wrongSound)
				
				timer.performWithDelay(3000, HideIncorrect)
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

	---------------------------------------------------------------------------------------------------------------------------------
	--  FUNCTION CALLS 
	---------------------------------------------------------------------------------------------------------------------------------

	-- call the function to ask one of the questions above
	AskQuestion()

 -----------------------------------------------------------------------------------------------------------------------------------------------------
 -- FUNCTION CALLS FOR TIMER AND LIVES
 -----------------------------------------------------------------------------------------------------------------------------------------------------

    local function UpdateTime()
	
	 --decrement the number of seconds 
	 secondsLeft = secondsLeft - 1 

	 -- display the number of seconds left in the clock object 
	 clockText.text = secondsLeft .. ""

	    if (secondsLeft == 0) then
		 -- reset the number of seconds left 
		 secondsLeft = totalSeconds
		 lives = lives - 1


		    if (lives == 2) then
			 heart2.isVisible = false
		    elseif (lives == 1) then
			 heart1.isVisible = false
		    end

		    if (lives == 0) then
		     heart.isVisible = false
		     
		     youLose = display.newImageRect("Images/youlose.png")

		     loseSoundChannel = audio.play(loseSound)
		    end
		
		  -- call the function to ask one of the questions above
		  AskQuestion()
	    end
    end

  -- function that calls the timer
    local function StartTimer()
	 -- create a countdown timer that loops infinitely
	 countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
    end

 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- OBJECT CREATION
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 -- create the lives to display on the screen
 heart = display.newImageRect("Images/heart.png", 100, 100)
 heart.x = display.contentWidth * 7 / 8
 heart.y = display.contentHeight * 1 / 7

 heart1 = display.newImageRect("Images/heart1.png", 100, 100)
 heart1.x = display.contentWidth * 6 / 8
 heart1.y = display.contentHeight * 1 / 7

 heart2 = disdisplay.newImageRect("Images/heart2.png", 100, 100)
 heart2.x = display.contentWidth * 5 / 8
 heart.y = display.contentHeight * 1 / 7
end