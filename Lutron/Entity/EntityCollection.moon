Entity = require "Lutron/Entity/Entity"

class EntityCollection extends Entity
  new: (entities = {}) =>
    super!
    @entities = entities

  load: =>
    super!
    for i, entity in pairs @entities
      entity\load!

  update: (dt) =>
    super dt
    for i, entity in pairs @entities
      entity\update dt

  draw: =>
    super!
    for i, entity in pairs @entities
      entity\draw!
