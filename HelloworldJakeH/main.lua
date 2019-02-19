-- main.lua
-- Title: HelloWorld
-- Name: Jake Holtzhauer
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
--------------------------------------------------------------------------------
-- print "Good morning" to the command terminal
print ("***Good Morninggggg!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--Sets backround colour
display.setDefault("background", 0/255, 255/255, 0/255)

-- create a local variable
local textObject

--displays text on the screen at position x = 500 y = 400
-- a default font stlye and font syz of 50
textObject = display.newText( "Good morning!", 500, 400, nil, 50)

-- sets the colour of text
textObject:setTextColor( 0/255, 0/255, 0/255)

-- print "this is awesome!" to the command terminal
print ("***this is awesome!")

-- create another local variable
local anotherTextObject

-- displays text on the screen at x = 500 y = 550
-- a default font styel and font size of 50
anotherTextObject = display.newText( "By: Jake Holtzhauer", 500, 465, nil, 50 )

-- sets the color of the text
anotherTextObject:setTextColor(51/255, 51/255, 255,255)