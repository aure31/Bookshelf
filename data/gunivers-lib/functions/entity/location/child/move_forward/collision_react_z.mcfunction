# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:
#     Reaction Z
scoreboard players operation @s[scores={CollisionLocal=1..3}] Var1 += 180 Constant
scoreboard players operation @s[scores={CollisionLocal=1..3}] Var1 *= Neg Constant