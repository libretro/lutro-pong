Paddle = require "Paddle"

class Player2 extends Paddle
  load: =>
    @right @game.width - @distanceFromSide
	@r = 33
	@g = 150
	@b = 243
	@a = 255

  processInput: =>
    ball = @game\entities!["ball"]

    -- Only move the paddle if the ball is moving closer
    if ball.velocity.x > 0
      if ball\centerY! < @centerY!
        @acceleration.y = -@accelerationSpeed
      else
        @acceleration.y = @accelerationSpeed
    else
      -- Stop moving the paddle
      @acceleration.y = 0
