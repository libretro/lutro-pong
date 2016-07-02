Font = require "Lutron/Font/Font"

class FontSmall extends Font
  new: () =>
    super 'Lutron/Font/FontSmall.png', " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,-!$:;'"
