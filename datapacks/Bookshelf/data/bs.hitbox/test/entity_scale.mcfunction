# @batch bs.hitbox
# @dummy

## |TEST CASE|: Default entity scale
function #bs.hitbox:get_entity
assert data storage bs:out hitbox{ scale: 1.0 }

## |TEST CASE|: Custom entity scale
attribute @s minecraft:scale base set 0.42
function #bs.hitbox:get_entity
assert data storage bs:out hitbox{ scale: 0.42 }
