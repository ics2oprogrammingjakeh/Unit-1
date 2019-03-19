-- Title: NumericTextFields
-- Name: Jake Holtzhaue
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in a numeric textfield.
--terminal.
----------------------------

--hiding the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the backround colour
display.setDefault("background", 200/255, 80/255, 90/255)
-------------------------------------------------------------------
--local variables
-------------------------------------------------------------------
--creating local variables
local questionObject
local correctObject
local numericField 
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

------------------------------------------------------------------
--local functions
------------------------------------------------------------------

local function AskQuestion()
	--generate 2 random numbers that between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	--creating question in text object
	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

end 

local function HideCorrect()
	correctObject.isVisible = false
end

local function NumericFieldListener( event )

	--useer begins editing "numericField"
	if ( event.phase == "began") then 
		
		--clear text field 
		event.target.text = ""

		elseif event.phase == "submitted" then

			--when the answer is submitted (enter key is pressed) set user input to users answer
			userAnswer = tonumber(event.target.text)


			-- if the busers answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true 
				timer.performWithDelay(2000, HideCorrect)
			end
		end
	end

	------------------------------------------------------------
	--object creation
	------------------------------------------------------------

	--displays a question and sets the colour
	questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
	questionObject:setTextColor(255/25, 169/255, 50/255)
	
--creating the correcttext object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(15/255, 170/255, 150/255)
correctObject.isVisible = false

	--create numeric field
	numericField = native.newTextField( display.contentWidth/2, display.contentHeight*2/3, nil, 50)
	numericField.inputType = "number"
	
	--add the event listener for the numeric field 
	numericField:addEventListener( "userInput", NumericFieldListener )

	-----------------------------------------------------------
	--function calls
	-----------------------------------------------------------
	--call the function to ask the question
	AskQuestion()

