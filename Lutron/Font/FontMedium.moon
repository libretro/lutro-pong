Font = require "Lutron/Font/Font"

class FontMedium extends Font
  new: () =>
    super 'Lutron/Font/FontMedium.png', " 0123456789abcdefghijklmnopqrstuvxyzABCDEFGHIJKLMNOPQRSTUVXYZ!-.,$"
