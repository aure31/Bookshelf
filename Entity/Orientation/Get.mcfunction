# GetOrientation

# @Author: Leirof

#Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Phi (score dummy)
# - Theta (score dummy)

#Input values: None

#Output values:
# - Phi (score dummy)
# - Theta (score dummy)

summon armor_stand ~ ~ ~ {Tags:["GetOrientation"],NoGravity:1,Invisible:1,Small:1,Marker:1}
execute @e[type=armor_stand,tag=GetOrientation,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Orientation/Get-Slave

scoreboard players operation @s Phi = @e[type=armor_stand,tag=GetOrientation,c=1] Phi
scoreboard players operation @s Theta = @e[type=armor_stand,tag=GetOrientation,c=1] Theta
kill @e[type=armor_stand,tag=GetOrientation,c=1]
