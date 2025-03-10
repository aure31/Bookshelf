# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2025 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------
$scoreboard players set #o bs.ctx $(maxsplit)
#reset
data modify storage bs:out string.split set value []
execute store result score #c bs.ctx store result storage bs:ctx x int 1 run scoreboard players set #i bs.ctx 0
scoreboard players set #d bs.ctx -1

#size check
execute store result score #l bs.ctx run data get storage bs:in string.split.str
execute store result score #p bs.ctx store result score #e bs.ctx store result storage bs:ctx y int 1 run data get storage bs:in string.split.separator

#moving values
data modify storage bs:ctx _ set from storage bs:in string.split
data modify storage bs:ctx _.cut set from storage bs:in string.split.str

#corner case
execute if score #l bs.ctx matches 0 run return run data modify storage bs:out string.split append value ""
execute if score #p bs.ctx matches 0 run function bs.string:type/to_list/run
execute if score #p bs.ctx matches 0 run return run data modify storage bs:out string.split set from storage bs:ctx _.l

execute if score #p bs.ctx > #l bs.ctx run return 0
scoreboard players operation #l bs.ctx -= #p bs.ctx

#precompute
data modify storage bs:ctx _.ltr set string storage bs:ctx _.separator 0 1
data modify storage bs:ctx _.separator set string storage bs:ctx _.separator 1
data remove storage bs:ctx _.pattern
function bs.string:split/precompute with storage bs:ctx _

#check values
execute if score #o bs.ctx matches 0 run return run function bs.string:split/normal/normal with storage bs:ctx
execute if score #o bs.ctx matches 1.. run return run function bs.string:split/count/count with storage bs:ctx
function #bs.log:error { namespace: "bs.string", path: "bs.string:split", tag: "split", message: '"does not accept negative values"' }
