local Vector2D
do
  local _class_0
  local _base_0 = {
    copy = function(self)
      return Vector2D(self.x, self.y)
    end,
    magnitude = function(self, magnitude)
      if magnitude == nil then
        magnitude = nil
      end
      if magnitude == nil then
        return math.sqrt(self.x ^ 2 + self.y ^ 2)
      end
      local direction = self:direction()
      self.x = math.cos(direction) * magnitude
      self.y = math.sin(direction) * magnitude
      return magnitude
    end,
    direction = function(self, direction)
      if direction == nil then
        direction = nil
      end
      if direction == nil then
        return math.atan2(self.y, self.x)
      end
      local magnitude = self:magnitude()
      self.x = math.cos(direction) * magnitude
      self.y = math.sin(direction) * magnitude
      return direction
    end,
    equals = function(self, vec)
      return (self.x == vec.x) and (self.y == vec.y)
    end,
    add = function(self, vec)
      self.x = self.x + vec.x
      self.y = self.y + vec.y
      return self
    end,
    subtract = function(self, vec)
      self.x = self.x - vec.x
      self.y = self.y - vec.y
      return self
    end,
    multiply = function(self, vec)
      self.x = self.x * vec.x
      self.y = self.y * vec.y
      return self
    end,
    divide = function(self, vec)
      self.x = self.x / vec.x
      self.y = self.y / vec.y
      return self
    end,
    reflectDegrees = function(self, degrees)
      local angle = math.deg(self:direction())
      local oppAngle = (angle + 180) % 360
      if degrees >= oppAngle then
        local normDiffAngle = degrees - oppAngle
        angle = (degrees + normDiffAngle) % 360
      else
        local normDiffAngle = oppAngle - degrees
        angle = degrees - normDiffAngle
        if angle < 0 then
          angle = angle + 360
        end
      end
      return self:direction(math.rad(angle))
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, x, y)
      if x == nil then
        x = 0
      end
      if y == nil then
        y = 0
      end
      self.x = x
      self.y = y
    end,
    __base = _base_0,
    __name = "Vector2D"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Vector2D = _class_0
  return _class_0
end
