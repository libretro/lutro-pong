local Rectangle = require("Lutron/Entity/Rectangle")
local Paddle
do
  local _parent_0 = Rectangle
  local _base_0 = {
    processInput = function(self) end,
    update = function(self, dt)
      self:processInput()
      if self:bottom() > self.game.height then
        self.velocity.y = self.velocity.y * -1
        self:bottom(self.game.height)
      elseif self:top() < 0 then
        self.velocity.y = self.velocity.y * -1
        self:top(0)
      end
      return _parent_0.update(self, dt)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, game)
      self.game = game
      _parent_0.__init(self, 0, 0, 5, 50)
      self.friction.y = 0.9
      self.accelerationSpeed = 1800
      self.distanceFromSide = 20
      return self:centerY(self.game.height / 2)
    end,
    __base = _base_0,
    __name = "Paddle",
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
  Paddle = _class_0
  return _class_0
end
