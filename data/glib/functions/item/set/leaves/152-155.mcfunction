execute if score @s glib.itemId matches 152 run summon item ~ ~ ~ {Item:{id:"minecraft:cave_spider_spawn_egg",Count:1b}}
execute if score @s glib.itemId matches 153 run summon item ~ ~ ~ {Item:{id:"minecraft:chain",Count:1b}}
execute if score @s glib.itemId matches 154 run summon item ~ ~ ~ {Item:{id:"minecraft:chain_command_block",Count:1b}}
execute if score @s glib.itemId matches 155 run summon item ~ ~ ~ {Item:{id:"minecraft:chainmail_boots",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
