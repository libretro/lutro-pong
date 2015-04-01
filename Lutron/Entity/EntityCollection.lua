local Entity = require("Lutron/Entity/Entity")
local EntityCollection
do
  local _parent_0 = Entity
  local _base_0 = {
    load = function(self)
      _parent_0.load(self)
      for i, entity in pairs(self.entities) do
        entity:load()
      end
    end,
    update = function(self, dt)
      _parent_0.update(self, dt)
      for i, entity in pairs(self.entities) do
        entity:update(dt)
      end
    end,
    draw = function(self)
      _parent_0.draw(self)
      for i, entity in pairs(self.entities) do
        entity:draw()
      end
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  local _class_0 = setmetatable({
    __init = function(self, entities)
      if entities == nil then
        entities = { }
      end
      _parent_0.__init(self)
      self.entities = entities
    end,
    __base = _base_0,
    __name = "EntityCollection",
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
  EntityCollection = _class_0
  return _class_0
end
