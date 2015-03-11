Text = require("Lutron/Entity/Text")
Audio = require("Lutron/Entity/Audio")

class Score extends Text
  new: (game, player) =>
    super(0, 0, 20, 30)
    @soundScore = Audio("Resources/blip.wav")
    @reset!

    -- Find the position based on the player number
    @position.y = 10
    @centerX game.width / 3 * player

  load: =>
    super!
    @soundScore\load!

  reset: =>
    @text = 0

  addScore: (amount = 1) =>
    @soundScore\play!
    @text += amount
