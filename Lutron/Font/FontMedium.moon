Font = require "Lutron/Font/Font"

class FontMedium extends Font
  new: () =>
    super 'Lutron/Font/font_medium.png', " 0123456789abcdefghijklmnopqrstuvxyzABCDEFGHIJKLMNOPQRSTUVXYZ!-.,$"
