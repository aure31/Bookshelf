# This function was automatically generated.

execute as @a[tag=bs.menu.debug.bs.cache,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.cache] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.bs.cache] bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.cache,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.cache,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.bs.cache,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.cache,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.bs.cache] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.bs.cache] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.bs.cache] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.bs.cache] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.bs.cache,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.cache] remove bs.menu.debug
tag @a[tag=bs.menu.debug.bs.cache.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.bs.cache.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.bs.cache.close] remove bs.menu.debug.bs.cache
tag @a[tag=bs.menu.debug.bs.cache.close] remove bs.menu.debug.bs.cache.close

tellraw @a[tag=bs.menu.debug.bs.cache] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=!bs.debug.bs.cache.select_chest] ["", {"text": "   select_chest: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_chest"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_chest"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=bs.debug.bs.cache.select_chest] ["", {"text": "   select_chest: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_chest"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_chest"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=!bs.debug.bs.cache.select_command_block] ["", {"text": "   select_command_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_command_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_command_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=bs.debug.bs.cache.select_command_block] ["", {"text": "   select_command_block: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_command_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_command_block"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=!bs.debug.bs.cache.select_jukebox] ["", {"text": "   select_jukebox: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_jukebox"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_jukebox"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=bs.debug.bs.cache.select_jukebox] ["", {"text": "   select_jukebox: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_jukebox"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_jukebox"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=!bs.debug.bs.cache.select_shulker_box] ["", {"text": "   select_shulker_box: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_shulker_box"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_shulker_box"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=bs.debug.bs.cache.select_shulker_box] ["", {"text": "   select_shulker_box: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_shulker_box"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_shulker_box"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=!bs.debug.bs.cache.select_sign] ["", {"text": "   select_sign: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_sign"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.bs.cache.select_sign"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=bs.menu.debug.bs.cache,scores={bs.menu.page = 0},tag=bs.debug.bs.cache.select_sign] ["", {"text": "   select_sign: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_sign"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.bs.cache.select_sign"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=bs.menu.debug.bs.cache] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.cache.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / bs.cache", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.bs.cache.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]