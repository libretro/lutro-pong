local State = require("Lutron/State/State")
local StateMachine
do
  local _class_0
  local stateNameIndex, currentStateName
  local _base_0 = {
    addState = function(self, state)
      if state.name == nil then
        state.name = stateNameIndex
        stateNameIndex = stateNameIndex + 1
      end
      self.states[state.name] = state
    end,
    currentState = function(self)
      return self.states[currentStateName]
    end,
    enterState = function(self, name)
      self.states[name]:enter(self.states[currentStateName])
      self:currentState():exit(self.states[name])
      currentStateName = name
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, startingState)
      if startingState == nil then
        startingState = nil
      end
      self.states = { }
      if startingState == nil then
        startingState = State(self)
      end
      self:addState(startingState)
      currentStateName = startingState.name
    end,
    __base = _base_0,
    __name = "StateMachine"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  local self = _class_0
  stateNameIndex = 1
  currentStateName = nil
  StateMachine = _class_0
  return _class_0
end
