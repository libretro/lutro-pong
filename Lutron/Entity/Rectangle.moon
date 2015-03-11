ColoredEntity = require "Lutron/Entity/ColoredEntity"

class Rectangle extends ColoredEntity
  new: (x = 0, y = 0, width = 1, height = 1, r = 255, g = 255, b = 255, a = 1, fill = "fill") =>
    super x, y, width, height, r, g, b, a
    @mode = "fill"

  draw: =>
    super!
    lutro.graphics.rectangle @mode, @position.x, @position.y, @size.x, @size.y
