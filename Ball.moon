Rectangle = require "Lutron/Entity/Rectangle"
Audio = require "Lutron/Entity/Audio"

class Ball extends Rectangle
  -- @todo Add an Image Entity so that the ball can be a circle.
  new: (game) =>
    super(game.width / 2, game.height / 2, 5, 5)
    @game = game
    @initialSpeed = 180

    -- Audio
    @soundBounce1 = Audio("Resources/boop.wav")
    @soundBounce2 = Audio("Resources/beep.wav")

  load: =>
    super!
    @soundBounce1\load!
    @soundBounce2\load!
    @reset!

  reset: =>
    @centerX @game.width / 2
    @centerY @game.height / 2
    @velocity.x = @initialSpeed
    @velocity.y = 0

  update: (dt) =>
    -- Bounce the ball off the walls
    if @bottom! > @game.height
      @bottom @game.height
      @velocity.y *= -1
    elseif @top! < 0
      @top 0
      @velocity.y *= -1

    -- Collisions with paddles
    if paddle = @paddleCollide!
      -- Get the relative position from the center by percentage
      hitPercentAngle = (paddle\centerY! - @centerY!) / paddle\height! * 100

      -- Convert the percentage to a reflection back to the other paddle
      @velocity\reflectDegrees hitPercentAngle * -0.75

      -- Increase the speed of the ball
      @velocity\magnitude(@velocity\magnitude! * 1.1)

    -- Check if the ball is out of bounds
    if @left! > @game.width
      -- Player 1 scores
      @reset!
      @velocity.x *= -1 -- Send in opposite start direction
      @game\entities!["player1score"]\addScore!
    elseif (@right! < 0)
      -- Player 2 scores
      @reset!
      @game\entities!["player2score"]\addScore!

    -- Update all other entity behaviors
    super dt

  -- Check if there is a collision with the paddles, returning the paddle
  paddleCollide: =>
    player1 = @game\entities!["player1"]
    player2 = @game\entities!["player2"]
    if @velocity.x <= 0 and @collision player1
      @soundBounce1\play!
      return player1
    elseif @velocity.x >= 0 and @collision player2
      @soundBounce2\play!
      return player2
    return false
