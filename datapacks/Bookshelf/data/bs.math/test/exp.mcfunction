# exp returns the correct values
# @batch bs.math

data modify storage bs:in math.exp.x set value 3.0
function #bs.math:exp
execute store result score #r bs.ctx run data get storage bs:out math.exp 10000
assert score #r bs.ctx matches 200854..200856

data modify storage bs:in math.exp.x set value 7.25
function #bs.math:exp
execute store result score #r bs.ctx run data get storage bs:out math.exp 10000
assert score #r bs.ctx matches 14081047..14081049
