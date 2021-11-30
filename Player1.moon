Paddle = require "Paddle"

class Player1 extends Paddle
	load: =>
		@left @distanceFromSide
		@r = 244
		@g = 67
		@b = 54
		@b = 255

	processInput: =>
		if lutro.joystick.isDown(1, 5)
			@acceleration.y = -@accelerationSpeed
		elseif lutro.joystick.isDown(1, 6)
			@acceleration.y = @accelerationSpeed
		else
			@acceleration.y = 0
