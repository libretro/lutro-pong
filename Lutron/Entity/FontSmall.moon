Font = require "Lutron/Entity/Font"

class FontSmall extends Font
  new: () =>
    super 'Lutron/Resources/font_small.png', " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,-!$:;'"
