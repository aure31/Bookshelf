# This function was automatically generated.

execute as @a[tag=bs.menu.debug.math.bitwise,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.bitwise] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.math.bitwise] bs.menu.page 0
execute as @a[tag=bs.menu.debug.math.bitwise,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math.bitwise,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math.bitwise,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math.bitwise,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math.bitwise] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.math.bitwise] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.math.bitwise] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.math.bitwise] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.math.bitwise,tag=bs.menu.debug.math] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.bitwise] remove bs.menu.debug.math
tag @a[tag=bs.menu.debug.math.bitwise.close] add bs.menu.debug.math
execute as @a[tag=bs.menu.debug.math.bitwise.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.bitwise.close] remove bs.menu.debug.math.bitwise
tag @a[tag=bs.menu.debug.math.bitwise.close] remove bs.menu.debug.math.bitwise.close

tellraw @a[tag=bs.menu.debug.math.bitwise] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=!bs.debug.math.bitwise.and] ["", {"text": "   and: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.and"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.and"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=bs.debug.math.bitwise.and] ["", {"text": "   and: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.and"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.and"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=!bs.debug.math.bitwise.get_number_of_bits] ["", {"text": "   get_number_of_bits: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.get_number_of_bits"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.get_number_of_bits"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=bs.debug.math.bitwise.get_number_of_bits] ["", {"text": "   get_number_of_bits: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.get_number_of_bits"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.get_number_of_bits"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=!bs.debug.math.bitwise.not] ["", {"text": "   not: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.not"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.not"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=bs.debug.math.bitwise.not] ["", {"text": "   not: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.not"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.not"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=!bs.debug.math.bitwise.or] ["", {"text": "   or: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.or"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.or"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=bs.debug.math.bitwise.or] ["", {"text": "   or: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.or"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.or"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=!bs.debug.math.bitwise.two_complement] ["", {"text": "   two_complement: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.two_complement"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.two_complement"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=bs.debug.math.bitwise.two_complement] ["", {"text": "   two_complement: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.two_complement"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.two_complement"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=!bs.debug.math.bitwise.xor] ["", {"text": "   xor: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.xor"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.bitwise.xor"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.bitwise,scores={bs.menu.page = 0},tag=bs.debug.math.bitwise.xor] ["", {"text": "   xor: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.xor"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.bitwise.xor"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.math.bitwise] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.bitwise.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "bs Menu / Debug / math / bitwise", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.bitwise.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]