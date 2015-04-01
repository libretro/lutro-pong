-- EventHandler
-- Roughly based off:
--   https://github.com/slime73/Lua-Event
class EventHandler
  new: =>
    @events = {}

  trigger: (eventName, ...) =>
    for obj, callback in pairs(events[eventName] or {})
      if type(obj) == "function"
        obj ...
      elseif obj[eventName]
        obj[eventName] ...
      elseif obj\on
        obj\on eventName, ...

  register: (obj, ...) =>
    for i, eventName in ipairs {...}
      if @events[eventName] == nil
        @events[eventName] = {obj}
      else
        table.insert @events[eventName], obj
