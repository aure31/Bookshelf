
# if E = -81
execute store result score #in bs.data run data get storage bs.in math.sqrt 2596148429267413814265248164610048
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000011978854817838860830092610137680128936465115126290925116122210863922603607534256 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -82
execute store result score #in bs.data run data get storage bs.in math.sqrt 5192296858534827628530496329220096
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000008470329472543003390683225006796419620513916015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -83
execute store result score #in bs.data run data get storage bs.in math.sqrt 10384593717069655257060992658440192
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000005989427408919430415046305068840064468232557563145462558061105431961301803767128 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -84
execute store result score #in bs.data run data get storage bs.in math.sqrt 20769187434139310514121985316880384
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000000000000000042351647362715016953416125033982098102569580078125 run scoreboard players get #out bs.data
