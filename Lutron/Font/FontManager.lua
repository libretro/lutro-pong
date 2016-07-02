local FontManager
do
  local _class_0
  local _base_0 = {
    add = function(self, name, font)
      self.fonts[name] = font
    end,
    load = function(self, name)
      if name == nil then
        name = nil
      end
      if name then
        return self.fonts[name]:load()
      else
        for name, font in pairs(self.fonts) do
          font:load()
        end
        return true
      end
    end,
    get = function(self, name)
      return self.fonts[name]
    end,
    set = function(self, name)
      if self.fonts[name] then
        return self.fonts[name]:set()
      end
      return false
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, defaultName, defaultFont)
      if defaultName == nil then
        defaultName = nil
      end
      if defaultFont == nil then
        defaultFont = nil
      end
      self.fonts = { }
      if defaultName and defaultFont then
        return self:add(defaultName, defaultFont)
      end
    end,
    __base = _base_0,
    __name = "FontManager"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  FontManager = _class_0
  return _class_0
end
