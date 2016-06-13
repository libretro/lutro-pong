local Entity = require("Lutron/Entity/Entity")
local ColoredEntity
do
  local _class_0
  local _parent_0 = Entity
  local _base_0 = {
    draw = function(self)
      return lutro.graphics.setColor(self.r, self.g, self.b, self.a)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, x, y, width, height, r, g, b, a)
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
        a = 255
      end
      _class_0.__parent.__init(self, x, y, width, height)
      self.r = r
      self.g = g
      self.b = b
      self.a = a
    end,
    __base = _base_0,
    __name = "ColoredEntity",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        local parent = rawget(cls, "__parent")
        if parent then
          return parent[name]
        end
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
  ColoredEntity = _class_0
  return _class_0
end
