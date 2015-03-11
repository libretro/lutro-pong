local ColoredEntity = require("Lutron/Entity/ColoredEntity")
local Rectangle
do
  local _parent_0 = ColoredEntity
  local _base_0 = {
    draw = function(self)
      _parent_0.draw(self)
      return lutro.graphics.rectangle(self.mode, self.position.x, self.position.y, self.size.x, self.size.y)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, x, y, width, height, r, g, b, a, fill)
      if x == nil then
        x = 0
      end
      if y == nil then
        y = 0
      end
      if width == nil then
        width = 1
      end
      if height == nil then
        height = 1
      end
      if r == nil then
        r = 255
      end
      if g == nil then
        g = 255
      end
      if b == nil then
        b = 255
      end
      if a == nil then
        a = 1
      end
      if fill == nil then
        fill = "fill"
      end
      _parent_0.__init(self, x, y, width, height, r, g, b, a)
      self.mode = "fill"
    end,
    __base = _base_0,
    __name = "Rectangle",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        return _parent_0[name]
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Rectangle = _class_0
  return _class_0
end
