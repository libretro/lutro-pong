Paddle = require "Paddle"

class Player1 extends Paddle
  load: =>
    @left @distanceFromSide

  processInput: =>
    if lutro.input.joypad("up") == 1
      @acceleration.y = -@accelerationSpeed
    elseif lutro.input.joypad("down") == 1
      @acceleration.y = @accelerationSpeed
    else
      @acceleration.y = 0
