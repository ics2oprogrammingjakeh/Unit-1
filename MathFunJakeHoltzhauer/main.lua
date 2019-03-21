-- Title: MathFun
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program displays math questions to the user and if they get it right it tells them 
--and if the get it wrong it tells them


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
local wrongAnswer 
local wrongObject

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
	AskQuestion()
end


local function HideWrong()
	wrongObject.isVisible = false
	AskQuestion()
end 


local function NumericFieldListener( event )

	--useer begins editing "numericField"
	if ( event.phase == "began") then 
		
		--clear text field 
		event.target.text = ""
		--when the answer is submitted (enter key is pressed) set user input to users answer
	elseif (event.phase == "submitted") then

		userAnswer = tonumber(event.target.text)
		-- if the users answer and the correct answer are the same
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true 
			timer.performWithDelay(2000, HideCorrect)
		else
			wrongObject.isVisible = true
			timer.performWithDelay(2000, HideWrong)		
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



wrongObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
wrongObject:setTextColor(15/255, 170/255, 150/255)
wrongObject.isVisible = false



	--create numeric field
	numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
	numericField.inputType = "number"
	
	--add the event listener for the numeric field 
	numericField:addEventListener( "userInput", NumericFieldListener )

	-----------------------------------------------------------
	--function calls
	-----------------------------------------------------------
	--call the function to ask the question
	AskQuestion()


	local function AskQuestion()
		--generate a random number between 1 and 4
		-- make sure to declare you variable
		randomOperator = math.random(1,2)


		--generate 2 random numbers
		randomNumber1 = math.random(0, 4)
		randomNumber2 = math.random(0, 4)

		--if the random operator is 1, then do addition
		if (randomOperator == 1) then

			--calculate the correct answer
			correctAnswer = randomNumber1 + randomNumber2

			--creae the question in the text object
			questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

		--otherwise, if the random operator is 2, do subtraction
		elseif (randomOperator == 2) then 

			correctAnswer = randomNumber1 - randomNumber2

			questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = " 
		end
	end


















































		

		




		
		















