Font = require "Lutron/Font/Font"

class FontBold extends Font
  new: () =>
    super 'Lutron/Font/font_bold.png', " ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*:|=-<>./'\"+"
