Font = require "Lutron/Font/Font"

class FontBold extends Font
  new: () =>
    super 'Lutron/Font/FontBold.png', " ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*:|=-<>./'\"+"
