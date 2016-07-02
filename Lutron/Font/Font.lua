local Font
do
  local _class_0
  local _base_0 = {
    load = function(self)
      if self.font == nil then
        self.font = lutro.graphics.newImageFont(self.path, self.chars)
      end
      return self.font
    end,
    set = function(self)
      if self.font ~= nil then
        lutro.graphics.setFont(self.font)
        return true
      end
      return false
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, path, characters)
      self.path = path
      self.chars = characters
    end,
    __base = _base_0,
    __name = "Font"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Font = _class_0
  return _class_0
end
