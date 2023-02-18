# This function was automatically generated.

execute as @a[tag=bs.menu.debug.location,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.location] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.location] bs.menu.page 0
execute as @a[tag=bs.menu.debug.location,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.location,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.location,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.location,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.location] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.location] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.location] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.location] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.location,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.location] remove bs.menu.debug
tag @a[tag=bs.menu.debug.location.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.location.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.location.close] remove bs.menu.debug.location
tag @a[tag=bs.menu.debug.location.close] remove bs.menu.debug.location.close

tellraw @a[tag=bs.menu.debug.location] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.add] ["", {"text": "   add: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.add"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.add"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.add] ["", {"text": "   add: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.add"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.add"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.fast_set] ["", {"text": "   fast_set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.fast_set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.fast_set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.fast_set] ["", {"text": "   fast_set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.fast_set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.fast_set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get_distance_ata] ["", {"text": "   get_distance_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_distance_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_distance_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get_distance_ata] ["", {"text": "   get_distance_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_distance_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_distance_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get_distance_squared_ata] ["", {"text": "   get_distance_squared_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_distance_squared_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_distance_squared_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get_distance_squared_ata] ["", {"text": "   get_distance_squared_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_distance_squared_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_distance_squared_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get_relative_ata] ["", {"text": "   get_relative_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_relative_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_relative_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get_relative_ata] ["", {"text": "   get_relative_ata: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_relative_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_relative_ata"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get_x] ["", {"text": "   get_x: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get_x] ["", {"text": "   get_x: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get_y] ["", {"text": "   get_y: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get_y] ["", {"text": "   get_y: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.get_z] ["", {"text": "   get_z: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.get_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.get_z] ["", {"text": "   get_z: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.get_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.is_in_cave] ["", {"text": "   is_in_cave: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.is_in_cave"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.is_in_cave"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.is_in_cave] ["", {"text": "   is_in_cave: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.is_in_cave"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.is_in_cave"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.set_x] ["", {"text": "   set_x: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.set_x] ["", {"text": "   set_x: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set_x"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.set_y] ["", {"text": "   set_y: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.set_y] ["", {"text": "   set_y: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set_y"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.set_z] ["", {"text": "   set_z: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.set_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.set_z] ["", {"text": "   set_z: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.set_z"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=!bs.debug.location.spread] ["", {"text": "   spread: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.spread"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.location.spread"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.location,scores={bs.menu.page = 0},tag=bs.debug.location.spread] ["", {"text": "   spread: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.spread"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.location.spread"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.location] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.location.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / location", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.location.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]