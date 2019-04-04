-- Title: LivesAndTimers
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program...

-- variables for the timer
local totalSeconds = 5
local secondsLeft = 5
local clockText
local countDownTimer

local lives = 3
local heart1 
local heart2
local heart3



--setting the background
display.setDefault("background", 158/255, 100/255, 219/255)


--getting rid of the status bar
display.setStatusBar(display.HiddenStatusBar)

--local functions

local function UpdateTime()
--decrement the number of seconds
	secondsLeft = secondsLeft - 1
--display the number of seconds in the clock object
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0) then
--reset the number of seconds left
		secondsLeft = totalSeconds
		lives = lives - 1

--
		if (lives == 2) then
			heart2.isVisible = false
		elseif (lives == 1) then
			heart1.isVisible = false
		end

		AskQuestion()

	end
end


local function StartTimer()

	countDownTimer = timer.performWithDelay(1000, UpdateTime, 0) 
end


heart1 = display.newImageRect("Images/healthheart/png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight *  1 / 7 

heart2 = newImageRect("Images/healthheart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

heart3 = newImageRect("Images/healthheart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8 
heart3.y = display.contentHeight * 1 / 7