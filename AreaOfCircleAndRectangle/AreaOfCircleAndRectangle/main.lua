--title Local Variables
--Name Jake Holtzhauer
-- Course ICS2O/3C
-- this program displays a rectangle and shows its area

--Creating my local variables 
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 400
local heightOfRectangle = 300
local areaOfRectangle

-- setting backroubnd colour of my screen
display.setDefault("background", 153/255, 51/255, 255/255)

-- removing the status bar
display.setStatusBar(display.HiddenStatusBar)

-- drawing the rectangle that is half of the width and height of the screen
myRectangle = display.newRect (0, 0, widthOfRectangle, heightOfRectangle)	

-- anchoring the rectangle to the top left corner of the screen and setting its (x, y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--setting the width of the border around my rectangle
myRectangle.strokeWidth = 20

-- setting the default colour of my rectangle to red
myRectangle:setFillColor(255/255, 51/255, 51/255)

-- setting the color of my rectangles border to blue
myRectangle:setStrokeColor(51/255, 51/255, 255/255)

--calculating the are of my border
areaOfRectangle = widthOfRectangle * heightOfRectangle

--writing the area of my rectangle on screen
areaText = diplay.newText("the area of this rectangle with a width of \n" 400
	widthOfRectangle .. " and a height of 300" heightOfRectangle 300 * 400 is 
	areaOfRectangle 120000 "pixels .", o, o, Arial, textSize)