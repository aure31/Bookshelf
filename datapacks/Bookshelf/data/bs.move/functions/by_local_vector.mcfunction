#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:by_vector
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.precision dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Precision Type","color":"dark_gray"}]

scoreboard objectives add bs.vectorLeft dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Vector Left","color":"dark_gray"}]
scoreboard objectives add bs.vectorUp dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Vector Up","color":"dark_gray"}]
scoreboard objectives add bs.vectorFront dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Vector Front","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block, 500 = 0.5 blocks). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!bs.config.override] bs.precision 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

# Backup

scoreboard players operation #backup.move.vectorX bs = @s bs.vectorLeft
scoreboard players operation #backup.move.vectorY bs = @s bs.vectorUp
scoreboard players operation #backup.move.vectorZ bs = @s bs.vectorFront
scoreboard players operation #backup.move.res0 bs = @s bs.res0

# Absurd values security

scoreboard players set @s[scores={bs.precision=1001..}] bs.precision 1000
scoreboard players set @s[scores={bs.precision=..-1}] bs.precision 1000

# Decomposition in sum of vector with parameters <= bs.precision

tag @s add bs.config.override
scoreboard players operation vector.fastNormalization.lenght bs.config = @s bs.precision
function bs.vector:local/fast_normalize

# Apply movement

scoreboard players set move.decomposition.factor bs 1000
scoreboard players operation move.decomposition.factor bs /= @s bs.res0
scoreboard players operation move.decomposition.factor.save bs = move.decomposition.factor bs
execute at @s if score move.decomposition.factor bs matches 1.. run function bs.move:by_local_vector/child/loop

# Rest of decomposition

scoreboard players operation move.vectorX bs *= move.decomposition.factor.save bs
scoreboard players operation move.vectorY bs *= move.decomposition.factor.save bs
scoreboard players operation move.vectorZ bs *= move.decomposition.factor.save bs
scoreboard players operation move.vectorX bs -= #backup.move.vectorX bs
scoreboard players operation move.vectorY bs -= #backup.move.vectorY bs
scoreboard players operation move.vectorZ bs -= #backup.move.vectorZ bs
scoreboard players operation move.vectorX bs *= -1 bs.const
scoreboard players operation move.vectorY bs *= -1 bs.const
scoreboard players operation move.vectorZ bs *= -1 bs.const

# Apply movement for the rest

tag @s add bs.move.by_vector.rest
execute at @s run function bs.move:by_local_vector/child/loop
tag @s remove bs.move.by_vector.rest

# Restore

scoreboard players operation @s bs.vectorX = #backup.move.vectorX bs
scoreboard players operation @s bs.vectorY = #backup.move.vectorY bs
scoreboard players operation @s bs.vectorZ = #backup.move.vectorZ bs
scoreboard players operation @s bs.res0 = backup.move.res0 bs
