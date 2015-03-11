ColoredEntity = require "Lutron/Entity/ColoredEntity"

class Point extends ColoredEntity
  draw: =>
    super!
    lutro.graphics.point(@position.x, @position.y)
