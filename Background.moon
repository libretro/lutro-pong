ColoredEntity = require "Lutron/Entity/ColoredEntity"

class Background extends ColoredEntity
  new: (game) =>
    super()
    @game = game

  load: =>
    @padding = 10
    @length = 10
    @lineSpacing = 20
    @position.x = @game.width / 2

  draw: =>
    super!
    -- Draw the dotted background in the middle.
    for i = @padding, @game.height - @padding, @length + @lineSpacing
      lutro.graphics.line @position.x, i, @position.x, i + @length
