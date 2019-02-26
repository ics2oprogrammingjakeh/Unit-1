-- Title: MovingImages
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade out.
-- I added another object that moves in a different direction as well as a background image.

-- hiding the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollspeed = 3

-- backround imag with width and height
local backrgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

--set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- function: MoveShip
-- input: this function accepts and event listener
-- Output: None
-- description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
beetleship.x = beetleship.x + scrollspeed	
-- change the transperency of the ship every time it moves so that it fades out
beetleship.alpha = beetleship.alpha + 0.01
end

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

---------------------------------------------------------------------
--global variables
local scrollspeed = 5

-- character image with width and height
local octopus = display.newImageRect ("Images/octopus.png", 800, 800)

-- set the image to be transparent
octopus.alpha = 0

--set the initial x and y position of beetleship
octopus.x = 1024
octopus.y = display.contentHeight/3

-- function: MoveShip
-- input: this function accepts and event listener
-- Output: None
-- description: This function adds the scroll speed to the x-value of the ship
local function MoveOctopus(event)
	-- add the scroll speed to the x-value of the ship
octopus.x = octopus.x + scrollspeed	
-- change the transperency of the octopus every time it moves so that it fades out
octopus.alpha = octopus.alpha + 00.1
end

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)
