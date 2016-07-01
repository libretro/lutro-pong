class Font
  new: (path, characters) =>
    @path = path
    @chars = characters

  load: =>
    if @font == nil
      @font = lutro.graphics.newImageFont(@path, @chars)

  set: =>
    if @font != nil
      lutro.graphics.setFont(@font)
