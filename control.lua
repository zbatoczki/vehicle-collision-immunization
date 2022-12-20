local function preventDamage(event)
    event.entity.health = event.entity.prototype.max_health
  end
  
  -- Register the on_collision event to run the on_collision function when a collision occurs
  local on_entity_damaged_filter = {
    {
        filter = "damage-type",
        type = "impact"
    }
  }
  script.on_event(defines.events.on_entity_damaged , preventDamage, on_entity_damaged_filter)