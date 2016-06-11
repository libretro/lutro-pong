Paddle = require "Paddle"

class Player1 extends Paddle
  load: =>
	@left @distanceFromSide

  processInput: =>
    -- @todo Consolidate both Love2D and Lutro input code.
	if love ~= nil
		if love.keyboard.isDown "up"
			@acceleration.y = -@accelerationSpeed
		elseif love.keyboard.isDown "down"
			@acceleration.y = -@accelerationSpeed
		else
			@acceleration.y = 0
	else
		if lutro.input.joypad("up") == 1
			@acceleration.y = -@accelerationSpeed
		elseif lutro.input.joypad("down") == 1
			@acceleration.y = @accelerationSpeed
		else
			@acceleration.y = 0
