-- Title: LivesAndTimers
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program...

-- variables for the timer
local totalSeconds = 5
local secondsLeft = 
local clockText
local countDownTimer

local lives = 3
local heart1 
local heart2


--local functions

local function UpdateTime()

	secondsLeft = secondsLeft - 1

	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0) then

		secondsLeft = totalSeconds
		lives = lives - 1


		if (lives == 2) then
			heart2.isVisible = false
		elseif (lives == 1) then
			heart1.isVisible = false
		end

	end
end


local function StartTimer()

	countDownTimer = timer.performWithDelay(1000, UpdateTime, 0) 
end


heart1 = display.newImageRect("Images/heart/png", 100, 100)
heart.x = display.content
