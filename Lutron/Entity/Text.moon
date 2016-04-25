Entity = require "Lutron/Entity/Entity"

class Text extends Entity
  new: (text = "", x = 0, y = 0, font = nil) =>
    super(x, y)
    @text = text
    @font = font

  draw: =>
    if font != nil
        @font\set!
    lutro.graphics.print @text, @position.x, @position.y

  load: =>
    if font != nil
      @font\load!
