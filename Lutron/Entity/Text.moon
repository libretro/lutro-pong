Entity = require "Lutron/Entity/Entity"

class Text extends Entity
  new: (text = "", x = 0, y = 0) =>
    super(x, y)
    @text = text
    -- @todo Add a Font API

  draw: =>
    lutro.graphics.print @text, @position.x, @position.y
