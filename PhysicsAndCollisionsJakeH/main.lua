-- Title: PhysicsAndCollisions
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program displays bouncing balls with a static beam and wall

display.setStatusBar(display.HiddenStatusBar)


display.setDefault()
--load physics
local physics = require("physics")
local bkg = display.newImageRect("Images/bkg.png", 2048, 1536)


--start physics
physics.start()
---------------------------------------------------
--objects
---------------------------------------------------
--ground
local ground = display.newImageRect("Images/ground.png", 0, 0)

--change the width to be the same as the screen 
ground.width = display.contentWidth

--add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

local beam = display.newImage("Images/beam_long.png", 344, 299)


--rotate the beam -60 degrees so its on an angle
beam:rotate(45)

--send it to the back layer


--add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})



local function firstBall()
	--creating the first ball
	local ball1 = display.newImage("Images/super_ball.png", 100, 100)

	--add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

local function secondBall()

	local ball2 = display.newImage("Images/super_ball.png", 50, 50)

	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

