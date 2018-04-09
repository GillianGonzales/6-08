-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On April 09 2018
--
-- This program will multiply two numbers together 
-----------------------------------------------------------------------------------------

--Making Varibles
local number1
local number2
local answer
local one
local looping


-- Changing Background
display.setDefault("background", 1, 1, 1 )

-- Adding Text Fields
local number1Text = native.newTextField (display.contentCenterX - 700, display.contentCenterY, 500,200)

local number2Text = native.newTextField (display.contentCenterX, display.contentCenterY, 500,200)

-- Adding Text

local symbolX = display.newText("X", display.contentCenterX - 350, display.contentCenterY, native.systemFont, 75)
symbolX:setFillColor ( 0, 0, 0)

local symbolEquals = display.newText("=", display.contentCenterX + 350, display.contentCenterY, native.systemFont, 75)
symbolEquals:setFillColor ( 0, 0, 0)

local answerText = display.newText("", display.contentCenterX + 700, display.contentCenterY, native.systemFont, 150)
answerText:setFillColor ( 0, 0, 0)

local instructions = display.newText("Type in a integer", display.contentCenterX , display.contentCenterY- 300, native.systemFont, 75)
instructions:setFillColor ( 0, 0, 0)

-- Adding image
local button = display.newImageRect("./assets/sprites/Button.png", 406, 157)
button.x = display.contentCenterX + 700
button.y = display.contentCenterY + 300

--Making Function
local function multiplyFunction( event )
	-- This function will mutiply two postive numbers

	number1 = tonumber(number1Text.text)
	number2 = tonumber(number2Text.text)
	answer = 0
	one = 1

	for  looping = one,number1 do 
		answer = answer + number2
	end

	answerText.text = ""..answer..""


end

button:addEventListener("touch", multiplyFunction)