local Paddle = require("Paddle")
local Player1
do
  local _class_0
  local _parent_0 = Paddle
  local _base_0 = {
    load = function(self)
      self:left(self.distanceFromSide)
      self.r = 244
      self.g = 67
      self.b = 54
    end,
    processInput = function(self)
      if love ~= nil then
        if lutro.joystick.isDown(1, 5) then
          self.acceleration.y = -self.accelerationSpeed
        elseif lutro.joystick.isDown(1, 6) then
          self.acceleration.y = self.accelerationSpeed
        else
          self.acceleration.y = 0
        end
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
    __name = "Player1",
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
  Player1 = _class_0
  return _class_0
end
