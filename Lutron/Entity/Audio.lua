local Entity = require("Lutron/Entity/Entity")
local Audio
do
  local _parent_0 = Entity
  local _base_0 = {
    load = function(self)
      self.audio = lutro.audio.newSource(self.path)
    end,
    play = function(self)
      if self.audio ~= nil then
        return lutro.audio.play(self.audio)
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, path)
      _parent_0.__init(self, state)
      self.path = path
      self.audio = nil
    end,
    __base = _base_0,
    __name = "Audio",
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
  Audio = _class_0
  return _class_0
end
