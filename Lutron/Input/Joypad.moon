class Joypad
  new: =>
    @input = {
      "b": false
      "y": false
      "select": false
      "start": false
      "up": false
      "down": false
      "left": false
      "right": false
      "a": false
      "x": false
      -- "l1": false
      -- "r1": false
      -- "l2": false
      -- "r2": false
      -- "l3": false
      -- "r3": false
    }
    @keyDownHandlers = {}
    @keyUpHandlers = {}

  triggerKeyDown: (key) =>
    

  update: (dt) =>
    for key, state in pairs @input
      newState = lutro.input.joypad key
      if state != newState
