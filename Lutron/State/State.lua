local State
do
  local _class_0
  local _base_0 = {
    load = function(self)
      for name, entity in pairs(self.entities) do
        entity:load()
      end
    end,
    enter = function(self, previousState) end,
    exit = function(self, nextState) end,
    draw = function(self)
      for name, entity in pairs(self.entities) do
        entity:draw()
      end
    end,
    update = function(self, dt)
      for name, entity in pairs(self.entities) do
        entity:update(dt)
      end
    end,
    addEntity = function(self, entity, name)
      if name == nil then
        name = nil
      end
      if name == nil then
        table.insert(self.entities, entity)
      else
        self.entities[name] = entity
      end
      return entity
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, parent)
      if parent == nil then
        parent = nil
      end
      self.parent = parent
      self.name = nil
      self.entities = { }
    end,
    __base = _base_0,
    __name = "State"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  State = _class_0
  return _class_0
end
