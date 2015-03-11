Entity = require "Lutron/Entity/Entity"

class Audio extends Entity
  new: (path) =>
    super state
    @path = path
    @audio = nil

  load: =>
    @audio = lutro.audio.newSource(@path)

  play: =>
    if @audio != nil
      lutro.audio.play(@audio)
