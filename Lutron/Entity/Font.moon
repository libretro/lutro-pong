Entity = require "Lutron/Entity/Entity"

class Font extends Entity
  new: (path, characters) =>
    super!
    @path = path
    @chars = characters

  load: =>
    if @font == nil
      @font = lutro.graphics.newImageFont(@path, @chars)

  set: =>
    if @font != nil
      lutro.graphics.setFont(@font)

  update: =>
    -- Nothing
