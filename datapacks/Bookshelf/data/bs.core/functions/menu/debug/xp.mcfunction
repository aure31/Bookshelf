# This function was automatically generated.

execute as @a[tag=bs.menu.debug.xp,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.xp] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.xp] bs.menu.page 0
execute as @a[tag=bs.menu.debug.xp,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.xp,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.xp,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.xp,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.xp] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.xp] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.xp] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.xp] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.xp,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.xp] remove bs.menu.debug
tag @a[tag=bs.menu.debug.xp.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.xp.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.xp.close] remove bs.menu.debug.xp
tag @a[tag=bs.menu.debug.xp.close] remove bs.menu.debug.xp.close

tellraw @a[tag=bs.menu.debug.xp] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.add_levels] ["", {"text": "   add_levels: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.add_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.add_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.add_levels] ["", {"text": "   add_levels: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.add_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.add_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.add_points] ["", {"text": "   add_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.add_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.add_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.add_points] ["", {"text": "   add_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.add_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.add_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.get_bar] ["", {"text": "   get_bar: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.get_bar] ["", {"text": "   get_bar: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.get_bar_rounded] ["", {"text": "   get_bar_rounded: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_bar_rounded"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_bar_rounded"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.get_bar_rounded] ["", {"text": "   get_bar_rounded: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_bar_rounded"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_bar_rounded"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.get_level_points] ["", {"text": "   get_level_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_level_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_level_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.get_level_points] ["", {"text": "   get_level_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_level_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_level_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.get_total_points] ["", {"text": "   get_total_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.get_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.get_total_points] ["", {"text": "   get_total_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.get_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.remove_levels] ["", {"text": "   remove_levels: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.remove_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.remove_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.remove_levels] ["", {"text": "   remove_levels: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.remove_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.remove_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.remove_points] ["", {"text": "   remove_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.remove_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.remove_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.remove_points] ["", {"text": "   remove_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.remove_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.remove_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.set_bar] ["", {"text": "   set_bar: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.set_bar] ["", {"text": "   set_bar: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_bar"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.set_levels] ["", {"text": "   set_levels: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.set_levels] ["", {"text": "   set_levels: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_levels"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.set_points] ["", {"text": "   set_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.set_points] ["", {"text": "   set_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=!bs.debug.xp.set_total_points] ["", {"text": "   set_total_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.xp.set_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.xp,scores={bs.menu.page = 0},tag=bs.debug.xp.set_total_points] ["", {"text": "   set_total_points: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.xp.set_total_points"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.xp] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.xp.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / xp", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.xp.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]