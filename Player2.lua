local Paddle = require("Paddle")
local Player2
do
  local _class_0
  local _parent_0 = Paddle
  local _base_0 = {
    load = function(self)
      self:right(self.game.width - self.distanceFromSide)
      self.r = 33
      self.g = 150
      self.b = 243
      self.b = 255
    end,
    processInput = function(self)
      local ball = self.game:entities()["ball"]
      if ball.velocity.x > 0 then
        if ball:centerY() < self:centerY() then
          self.acceleration.y = -self.accelerationSpeed
        else
          self.acceleration.y = self.accelerationSpeed
        end
      else
        self.acceleration.y = 0
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, ...)
      return _class_0.__parent.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Player2",
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
  Player2 = _class_0
  return _class_0
end
