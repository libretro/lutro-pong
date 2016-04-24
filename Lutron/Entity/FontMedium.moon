Font = require "Lutron/Entity/Font"

class FontSmall extends Font
  new: () =>
    super 'Lutron/Resources/font_medium.png', " 0123456789abcdefghijklmnopqrstuvxyzABCDEFGHIJKLMNOPQRSTUVXYZ!-.,$"
