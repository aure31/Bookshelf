#-------- Fonction permettant de calculer la racine carrée d'un nombre --------

#@Author: theogiraudet/Oromis

#Constantes
scoreboard players set 2 Constant 2
scoreboard players set -1 Constant -1

#Initialisation
scoreboard players set @s[tag=!launchSqrt] sqrt 20

#Vérification de la présence d'un nombre négatif
scoreboard players operation @s[score_Operation=-1] Operation *= -1 Constant 

#Operation
execute @s[tag=!launchSqrt] ~ ~ ~ scoreboard players operation @s[tag=setSqrt] Temp = @s[tag=setSqrt] Operation
execute @s[tag=!launchSqrt] ~ ~ ~ scoreboard players operation @s[tag=!launchSqrt] Temp /= 2 Constant
execute @s[tag=!launchSqrt] ~ ~ ~ scoreboard players tag @s[tag=setSqrt] add launchSqrt

#Boucle
scoreboard players remove @s sqrt 1
scoreboard players operation @s[tag=setSqrt] Temp2 = @s[tag=setSqrt] Operation
scoreboard players operation @s[tag=setSqrt] Operation /= @s[tag=setSqrt] Temp
scoreboard players operation @s[tag=setSqrt] Temp += @s[tag=setSqrt] Operation
scoreboard players operation @s[tag=setSqrt] Temp /= 2 Constant
scoreboard players operation @s[tag=setSqrt] Operation = @s[tag=setSqrt] Temp2

#Save
scoreboard players tag @s[tag=setSqrt,score_sqrt=0] add getSqrt
scoreboard players tag @s[tag=getSqrt] remove setSqrt
scoreboard players tag @s[tag=getSqrt] remove launchSqrt
scoreboard players operation @s[tag=getSqrt] Operation = @s[tag=getSqrt] Temp


#---------------------------- Formule de Héron ------------------------------

execute @e[tag=TeamsAlive,score_inGame=-1] ~ ~ ~ execute @e[tag=PlayerInPink,score_constant_min=1] ~ ~ ~ title @a title {"text":"","color":"white","extra":[{"text":"Pink","color":"light_purple","bold":"true"},{"text":" team won!"}]}
execute @e[tag=TeamsAlive,score_inGame=-1] ~ ~ ~ execute @e[tag=PlayerInPink,score_constant_min=1] ~ ~ ~ tellraw @a {"text":"The ","color":"white","extra":[{"text":"Pink","color":"light_purple","bold":"true"},{"text":" team won the game!"}]}
/summon Villager ~ ~3 ~ {Profession:1,CustomName:"Utility",CustomNameVisible:0,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"bread",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:1},maxUses:9999999,sell:{id:"iron_pickaxe",Count:1,tag:{CanDestroy:["minecraft:stained_glass","minecraft:sandstone","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:iron_door","minecraft:trapped_chest","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:obsidian","minecraft:stone_pressure_plate"], HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:1},buyB:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"flint_and_steel",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:trapped_chest","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:obsidian"], HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:9},buyB:{id:"iron_ingot",Count:30},maxUses:9999999,sell:{id:"ender_pearl",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:3},buyB:{id:"iron_ingot",Count:5},maxUses:9999999,sell:{id:"water_bucket",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:trapped_chest","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:obsidian], HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"compass",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:10},buyB:{id:"iron_ingot",Count:20},maxUses:9999999,sell:{id:"golden_apple",Count:1},rewardExp:false},{buy:{id:"golden_apple",Count:5},buyB:{id:"iron_ingot",Count:40},maxUses:9999999,sell:{id:"golden_apple",Count:1,Damage:1},rewardExp:false},{buy:{id:"gold_ingot",Count:3},buyB:{id:"iron_ingot",Count:20},maxUses:9999999,sell:{id:"carrot_on_a_stick",Count:1,Damage:0,tag:{display:{Name:"Smoke"}}},rewardExp:false}]}}
/summon Villager ~ ~3 ~ {Profession:1,CustomName:"Construction",CustomNameVisible:0,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"stained_glass",Count:4,Damage:6,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"sandstone_stairs",Count:3,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"sandstone",Count:2,Damage:2,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:1},buyB:{id:"iron_ingot",Count:15},maxUses:9999999,sell:{id:"tnt",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:9},maxUses:9999999,sell:{id:"trapped_chest",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:15},maxUses:9999999,sell:{id:"hopper",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"redstone_block",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:1},maxUses:9999999,sell:{id:"web",Count:3,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:9},maxUses:9999999,sell:{id:"ladder",Count:4,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:1},buyB:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"iron_door",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:1},maxUses:9999999,sell:{id:"stone_pressure_plate",Count:1,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"slime",Count:4,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"iron_ingot",Count:30},maxUses:9999999,sell:{id:"glowstone",Count:5,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"obsidian",Count:3,tag:{CanPlaceOn:["minecraft:stained_hardened_clay","minecraft:stained_glass","minecraft:sandstone","minecraft:quartz_stairs","minecraft:quartz_block","minecraft:stone_slab","minecraft:tnt","minecraft:sandstone_stairs","minecraft:hopper","minecraft:redstone_block","minecraft:web","minecraft:ladder","minecraft:slime","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:beacon","minecraft:anvil","minecraft:iron_trapdoor","minecraft:glowstone","minecraft:trapped_chest","minecraft:obsidian"],HideFlags:63}},rewardExp:false}]}}