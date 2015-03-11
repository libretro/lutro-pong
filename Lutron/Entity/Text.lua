local Entity = require("Lutron/Entity/Entity")
local Text
do
  local _parent_0 = Entity
  local _base_0 = {
    draw = function(self)
      return lutro.graphics.print(self.text, self.position.x, self.position.y)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, text, x, y)
      if text == nil then
        text = ""
      end
      if x == nil then
        x = 0
      end
      if y == nil then
        y = 0
      end
      _parent_0.__init(self, x, y)
      self.text = text
    end,
    __base = _base_0,
    __name = "Text",
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
  Text = _class_0
  return _class_0
end
