ColoredEntity = require "Lutron/Entity/ColoredEntity"

class Line extends ColoredEntity
  @width = 1
  @style = 0

  draw: =>
    super!
    lutro.graphics.line @position.x, @position.y, @position.x + @size.x, @position.y + @size.y
