Entity = require "Lutron/Entity/Entity"

class ColoredEntity extends Entity
  new: (x = 0, y = 0, width = 1, height = 1, r = 255, g = 255, b = 255, a = 255) =>
    super x, y, width, height
    @r = r
    @g = g
    @b = b
    @a = a

  draw: =>
    lutro.graphics.setColor @r, @g, @b, @a
