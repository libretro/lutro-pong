Font = require "Lutron/Entity/Font"

class FontSmall extends Font
  new: () =>
    super 'Lutron/Resources/font_bold.png', " ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*:|=-<>./'\"+"
