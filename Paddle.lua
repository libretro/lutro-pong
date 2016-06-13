local Rectangle = require("Lutron/Entity/Rectangle")
local Paddle
do
  local _class_0
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
      if math.abs(self.velocity.y) > self.maxSpeedY then
        if self.velocity.y > 0 then
          self.velocity.y = self.maxSpeedY
        else
          self.velocity.y = -self.maxSpeedY
        end
      end
      return _class_0.__parent.__base.update(self, dt)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, game)
      self.game = game
      _class_0.__parent.__init(self, 0, 0, 5, 50)
      self.friction.y = 900
      self.accelerationSpeed = 1800
      self.distanceFromSide = 20
      self:centerY(self.game.height / 2)
      self.maxSpeedY = 250
    end,
    __base = _base_0,
    __name = "Paddle",
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
  Paddle = _class_0
  return _class_0
end
