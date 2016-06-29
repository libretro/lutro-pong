Entity = require "Lutron/Entity/Entity"

class Image extends Entity
  new: (path, width, height, state) =>
    super 0, 0, width, height, state
    @path = path
    @image = nil
    @width width
    @height height

  load: =>
    @image = lutro.graphics.newImage(@path)

  draw: =>
    super!
    lutro.graphics.draw(@image, @position.x, @position.y)
