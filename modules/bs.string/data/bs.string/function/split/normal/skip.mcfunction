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

$scoreboard players add #i bs.ctx $(z)
$scoreboard players add #d bs.ctx $(z)
scoreboard players remove #d bs.ctx 1

execute if score #l bs.ctx < #i bs.ctx run return run data modify storage bs:out string.split append from storage bs:ctx _.cut

$data modify storage bs:ctx _.str set string storage bs:ctx _.str $(z)

function bs.string:split/normal/normal with storage bs:ctx
