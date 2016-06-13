local Image = require("Lutron/Entity/Image")
local Audio = require("Lutron/Entity/Audio")
local Ball
do
  local _class_0
  local _parent_0 = Image
  local _base_0 = {
    load = function(self)
      _class_0.__parent.__base.load(self)
      self.soundBounce1:load()
      self.soundBounce2:load()
      return self:reset()
    end,
    reset = function(self)
      self:centerX(self.game.width / 2)
      self:centerY(self.game.height / 2)
      self.velocity.x = self.initialSpeed
      self.velocity.y = 0
    end,
    update = function(self, dt)
      if self:bottom() > self.game.height then
        self:bottom(self.game.height)
        self.velocity.y = self.velocity.y * -1
      elseif self:top() < 0 then
        self:top(0)
        self.velocity.y = self.velocity.y * -1
      end
      do
        local paddle = self:paddleCollide()
        if paddle then
          local hitPercentAngle = (paddle:centerY() - self:centerY()) / paddle:height() * 100
          self.velocity:reflectDegrees(hitPercentAngle * -0.75)
          self.velocity:magnitude(self.velocity:magnitude() * 1.1)
          if self:left() < self.game.width / 2 then
            self:left(paddle:right())
          else
            self:right(paddle:left())
          end
        end
      end
      if self:left() > self.game.width then
        self:reset()
        self.velocity.x = self.velocity.x * -1
        self.game:entities()["player1score"]:addScore()
      elseif (self:right() < 0) then
        self:reset()
        self.game:entities()["player2score"]:addScore()
      end
      return _class_0.__parent.__base.update(self, dt)
    end,
    paddleCollide = function(self)
      local player1 = self.game:entities()["player1"]
      local player2 = self.game:entities()["player2"]
      if self.velocity.x <= 0 and self:collision(player1) then
        self.soundBounce1:play()
        return player1
      elseif self.velocity.x >= 0 and self:collision(player2) then
        self.soundBounce2:play()
        return player2
      end
      return false
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, game)
      _class_0.__parent.__init(self, 'Resources/ball.png', 8, 8)
      self.game = game
      self.initialSpeed = 180
      self.soundBounce1 = Audio("Resources/boop.wav")
      self.soundBounce2 = Audio("Resources/beep.wav")
    end,
    __base = _base_0,
    __name = "Ball",
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
  Ball = _class_0
  return _class_0
end
