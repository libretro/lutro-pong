local Vector2D = require("Lutron/Math/Vector2D")
local Entity
do
  local _base_0 = {
    load = function(self) end,
    draw = function(self) end,
    update = function(self, dt)
      self.velocity.x = self.velocity.x + (self.acceleration.x * dt)
      self.velocity.y = self.velocity.y + (self.acceleration.y * dt)
      self.velocity.x = self.velocity.x * self.friction.x
      self.velocity.y = self.velocity.y * self.friction.y
      self.position.x = self.position.x + (self.velocity.x * dt)
      self.position.y = self.position.y + (self.velocity.y * dt)
    end,
    left = function(self, left)
      if left == nil then
        left = nil
      end
      if left == nil then
        return self.position.x
      else
        self.position.x = left
        return left
      end
    end,
    right = function(self, right)
      if right == nil then
        right = nil
      end
      if right == nil then
        return self.position.x + self.size.x
      else
        self.position.x = right - self.size.x
        return right
      end
    end,
    top = function(self, top)
      if top == nil then
        top = nil
      end
      if top == nil then
        return self.position.y
      else
        self.position.y = top
        return top
      end
    end,
    bottom = function(self, bottom)
      if bottom == nil then
        bottom = nil
      end
      if bottom == nil then
        return self.position.y + self.size.y
      else
        self.position.y = bottom - self.size.y
        return bottom
      end
    end,
    centerX = function(self, centerX)
      if centerX == nil then
        centerX = nil
      end
      if centerX == nil then
        return self.position.x + self.size.x / 2
      else
        self.position.x = centerX - self.size.x / 2
        return centerX
      end
    end,
    centerY = function(self, centerY)
      if centerY == nil then
        centerY = nil
      end
      if centerY == nil then
        return self.position.y + self.size.y / 2
      else
        self.position.y = centerY - self.size.y / 2
        return centerY
      end
    end,
    collision = function(self, entity)
      if self:left() < entity:right() then
        if self:top() < entity:bottom() then
          if self:bottom() > entity:top() then
            if self:right() > entity:left() then
              return true
            end
          end
        end
      end
      return false
    end,
    width = function(self, width)
      if width == nil then
        width = nil
      end
      if width ~= nil then
        self.size.x = width
      end
      return self.size.x
    end,
    height = function(self, height)
      if height == nil then
        height = nil
      end
      if height ~= nil then
        self.size.y = height
      end
      return self.size.y
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self, x, y, width, height, state)
      if x == nil then
        x = 0
      end
      if y == nil then
        y = 0
      end
      if width == nil then
        width = 1
      end
      if height == nil then
        height = 1
      end
      if state == nil then
        state = nil
      end
      self.position = Vector2D(x, y)
      self.velocity = Vector2D()
      self.acceleration = Vector2D()
      self.size = Vector2D(width, height)
      self.friction = Vector2D(1, 1)
      self.state = state
    end,
    __base = _base_0,
    __name = "Entity"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Entity = _class_0
  return _class_0
end
