-- Title: TouchAndReact
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program... does something when i click on the button

-- setting the backround colour
display.setDefault ("background", 100/255, 0/255, 200/255)

--hiding the status bar 
display.setStatusBar(display.HiddenStatusBar)

-- creating the blue button 
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

-- creating the red button, setting its position and making it invisble
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = False

--creating the text object. setting its position and making it invisble
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (4, 2, 7)
textObject.isVisible = False

--function: bluebuttonListener
--input: touch listener
--output: none
--description: when blue button is clicked, it will make the text appear with the red button,
--and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then 
		blueButton.isVisible = false 
		redButton.isVisible = true 
		textObject.isVisible = true 
	end

	if (touch.phase == "ended") then 
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false 
	end 
end

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)


