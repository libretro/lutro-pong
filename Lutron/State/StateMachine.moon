State = require "Lutron/State/State"

class StateMachine
  stateNameIndex = 1
  currentStateName = nil

  new: (startingState = nil) =>
    @states = {}
    startingState = State(@) if startingState == nil
    @addState startingState
    currentStateName = startingState.name

  addState: (state) =>
    if state.name == nil
      state.name = stateNameIndex
      stateNameIndex += 1
    @states[state.name] = state

  currentState: =>
    return @states[currentStateName]

  enterState: (name) =>
    @states[name]\enter @states[currentStateName]
    @currentState!\exit @states[name]
    currentStateName = name

  setState: (name) =>
  	@currentStateName = name

  load: =>
    -- Load each state
    for name, state in pairs @states
      state\load!
