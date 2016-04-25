Entity = require "Lutron/Entity/Entity"

class Audio extends Entity
  new: (path) =>
    super!
    @path = path
    @audio = nil

  load: =>
    @audio = lutro.audio.newSource(@path)

  update: =>
    -- Nothing

  play: =>
    if @audio != nil
      lutro.audio.play(@audio)
