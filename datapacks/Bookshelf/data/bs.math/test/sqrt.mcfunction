# sqrt returns the correct values
# @batch bs.math

data modify storage bs:in math.sqrt.x set value 1234.56789
function #bs.math:sqrt
execute store result score #r bs.ctx run data get storage bs:out math.sqrt 100000
assert score #r bs.ctx matches 3513640..3513642

data modify storage bs:in math.sqrt.x set value 98765.56789
function #bs.math:sqrt
execute store result score #r bs.ctx run data get storage bs:out math.sqrt 100000
assert score #r bs.ctx matches 31426988..31426990
