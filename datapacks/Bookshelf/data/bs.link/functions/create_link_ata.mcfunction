execute as @e[limit=1,sort=nearest] unless predicate bs.id:has_suid run function #bs.id:give_suid
scoreboard players operation @s bs.link.to = @e[limit=1,sort=nearest] bs.id
function bs.link:update_link
