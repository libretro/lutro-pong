Entity = require "Lutron/Entity/Entity"

class Menu extends Entity
  new: (options = {}) =>
    super!
    @options = options
    @xOffset = 0
    @yOffset = 20
    @selected = 1
    @selectedText = '-'

  draw: =>
    for i, option in ipairs @options
      x = @position.x + @xOffset * (i - 1)
      y = @position.y + @yOffset * (i - 1)
      if @selected == i
        lutro.graphics.print @selectedText .. option, x, y
      else
        lutro.graphics.print ' ' .. option, x, y

  update: (dt) =>
    super dt
    lutro.input.joystick "up"