local ColoredEntity = require("Lutron/Entity/ColoredEntity")
local Line
do
  local _parent_0 = ColoredEntity
  local _base_0 = {
    draw = function(self)
      _parent_0.draw(self)
      return lutro.graphics.line(self.position.x, self.position.y, self.position.x + self.size.x, self.position.y + self.size.y)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Line",
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
  local self = _class_0
  self.width = 1
  self.style = 0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Line = _class_0
  return _class_0
end
