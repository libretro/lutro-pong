local Entity = require("Lutron/Entity/Entity")
local Menu
do
  local _parent_0 = Entity
  local _base_0 = {
    draw = function(self)
      for i, option in ipairs(self.options) do
        if self.selected == i then
          lutro.graphics.print('-' .. option, self.position.x + self.xOffset * (i - 1), self.position.y + self.yOffset * (i - 1))
        else
          lutro.graphics.print(' ' .. option, self.position.x + self.xOffset * (i - 1), self.position.y + self.yOffset * (i - 1))
        end
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, options)
      if options == nil then
        options = { }
      end
      _parent_0.__init(self)
      self.options = options
      self.xOffset = 0
      self.yOffset = 20
      self.selected = 1
    end,
    __base = _base_0,
    __name = "Menu",
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
  Menu = _class_0
  return _class_0
end
