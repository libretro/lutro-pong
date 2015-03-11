local Paddle = require("Paddle")
local Player1
do
  local _parent_0 = Paddle
  local _base_0 = {
    load = function(self)
      return self:left(self.distanceFromSide)
    end,
    processInput = function(self)
      if lutro.input.joypad("up") == 1 then
        self.acceleration.y = -self.accelerationSpeed
      elseif lutro.input.joypad("down") == 1 then
        self.acceleration.y = self.accelerationSpeed
      else
        self.acceleration.y = 0
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, ...)
      return _parent_0.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Player1",
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
  Player1 = _class_0
  return _class_0
end
