Font = require "Lutron/Font/Font"

class FontSmall extends Font
  new: () =>
    super 'Lutron/Font/font_small.png', " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,-!$:;'"
