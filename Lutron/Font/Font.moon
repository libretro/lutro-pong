class Font
  new: (path, characters) =>
    @path = path
    @chars = characters

  load: =>
    if @font == nil
      @font = lutro.graphics.newImageFont(@path, @chars)
    return @font

  set: =>
    if @font != nil
      lutro.graphics.setFont(@font)
      return true
    return false
