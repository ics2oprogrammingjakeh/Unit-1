-- Title: TouchAndDrag
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program... This program displays images that react to a persons finger.

--hiding the staus bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local purpleGirl = display.newImageRect("Images/girl4.png", 150, 150)
local purpleGirlWidth = purpleGirl.purpleGirlWidth
local purpleGirlHeight = purpleGirl.height

local whiteGirl = display.newImageRect("Images/girl5.png", 150, 150)
local whiteGirlWidth = whiteGirl.width
local whiteGirlHeight = whiteGirl.height

local greenGirl = display.newImageRect("Images/girl3.png", 150, 150)
local greenGirlWidth = greenGirl.purpleGirlWidth
local greenGirlHeight = greenGirl.height


--my boolean variables to keep track of which objects i touhed first
local alreadyTouchedpurpleGirl = false
local alreadyTouchedwhiteGirl = false
local alreadytouchedgreenGirl = false
--set the initial x and y position of myImage 
purpleGirl.x = 400
purpleGirl.y = 500

whiteGirl.x = 300
whiteGirl.y = 200

greenGirl.x = 100
greenGirl.y = 400
--function : girl4Listener
--input : touch listener
--output : none
--description : when girl 4 is touched move her
local function whiteGirlListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedpurpleGirl == false) then 
			alreadyTouchedwhiteGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedwhiteGirl == true) ) then
		whiteGirl.x = touch.x
		whiteGirl.y = touch.y
	end

	if (touch.phase == "ended") then 
	alreadyTouchedwhiteGirl = false 
	alreadyTouchedpurpleGirl = false
end 
end 

whiteGirl:addEventListener("touch", whiteGirlListener)


--add the respective listeners to each object 

local function purpleGirlListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedwhiteGirl == false) then 
			alreadyTouchedpurpleGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedpurpleGirl == true) ) then
		purpleGirl.x = touch.x
		purpleGirl.y = touch.y
	end

	if (touch.phase == "ended") then 
	alreadyTouchedpurpleGirl = false 
	alreadyTouchedwhiteGirl = false
end 
end purpleGirl:addEventListener("touch", purpleGirlListener)


local function greenGirlListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedwhiteGirl == false) then 
			alreadyTouchedpurpleGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedpurpleGirl == true) ) then
		greenGirl.x = touch.x
		greenGirl.y = touch.y
	end

	if (touch.phase == "ended") then 
	alreadyTouchedpurpleGirl = false 
	alreadyTouchedwhiteGirl = false
	alreadytouchedgreenGirl = false 
end 
end greenGirl:addEventListener("touch", greenGirlListener)




