local Entity = require("Lutron/Entity/Entity")
local Image
do
  local _class_0
  local _parent_0 = Entity
  local _base_0 = {
    load = function(self)
      self.image = lutro.graphics.newImage(self.path)
    end,
    draw = function(self)
      _class_0.__parent.__base.draw(self)
      return lutro.graphics.draw(self.image, self.position.x, self.position.y)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, path, width, height)
      _class_0.__parent.__init(self, state)
      self.path = path
      self.image = nil
      self:width(width)
      return self:height(height)
    end,
    __base = _base_0,
    __name = "Image",
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
  Image = _class_0
  return _class_0
end
