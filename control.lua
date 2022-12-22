local function preventDamage(event)    
    local causeEntity = event.cause
    local targetEntity = event.entity

    if causeEntity and targetEntity then
        if event.entity.force.name == "player" and event.cause.type == "car" then
            event.entity.health = event.entity.prototype.max_health
        end
    end
end
  
local on_entity_damaged_filter = {
    {
        filter = "damage-type",
        type = "impact"
    }
    ,{
        filter = "type",
        type = "car"
    }
  }
script.on_event(defines.events.on_entity_damaged , preventDamage, on_entity_damaged_filter)
