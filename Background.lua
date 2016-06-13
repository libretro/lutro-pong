local ColoredEntity = require("Lutron/Entity/ColoredEntity")
local Background
do
  local _class_0
  local _parent_0 = ColoredEntity
  local _base_0 = {
    load = function(self)
      self.padding = 10
      self.length = 10
      self.lineSpacing = 20
      self.position.x = self.game.width / 2
    end,
    draw = function(self)
      _class_0.__parent.__base.draw(self)
      for i = self.padding, self.game.height - self.padding, self.length + self.lineSpacing do
        lutro.graphics.line(self.position.x, i, self.position.x, i + self.length)
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, game)
      _class_0.__parent.__init(self)
      self.game = game
    end,
    __base = _base_0,
    __name = "Background",
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
  Background = _class_0
  return _class_0
end
