local Entity = require("Lutron/Entity/Entity")
local Text
do
  local _class_0
  local _parent_0 = Entity
  local _base_0 = {
    draw = function(self)
      if font ~= nil then
        self.font:set()
      end
      return lutro.graphics.print(self.text, self.position.x, self.position.y)
    end,
    load = function(self)
      if font ~= nil then
        return self.font:load()
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, text, x, y, font)
      if text == nil then
        text = ""
      end
      if x == nil then
        x = 0
      end
      if y == nil then
        y = 0
      end
      if font == nil then
        font = nil
      end
      _class_0.__parent.__init(self, x, y)
      self.text = text
      self.font = font
    end,
    __base = _base_0,
    __name = "Text",
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
  Text = _class_0
  return _class_0
end
