
# if E = -65
execute store result score #in bs.data run data get storage bs.in math.sqrt 39614081257132168796771975168
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000003066586833366748372503708195246113007735069472330476829727285981164186523528769612 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -66
execute store result score #in bs.data run data get storage bs.in math.sqrt 79228162514264337593543950336
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000000000021684043449710088680149056017398834228515625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -67
execute store result score #in bs.data run data get storage bs.in math.sqrt 158456325028528675187087900672
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000001533293416683374186251854097623056503867534736165238414863642990582093261764384806 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -68
execute store result score #in bs.data run data get storage bs.in math.sqrt 316912650057057350374175801344
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.000000000000000000108420217248550443400745280086994171142578125 run scoreboard players get #out bs.data
