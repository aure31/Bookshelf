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

# Test basic find
data modify storage bs:in string.find merge value {str:"hello world",substr:"world"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[6]}}

# Test empty string
data modify storage bs:in string.find merge value {str:"",substr:"test"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[]}}

# Test empty substr
data modify storage bs:in string.find merge value {str:"test string",substr:""}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[]}}

# Test multiple occurrences
data modify storage bs:in string.find merge value {str:"test test test",substr:"test"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[0,5,10]}}

# Test with occurrence limit
data modify storage bs:in string.find merge value {str:"find find find find",substr:"find"}
function #bs.string:find {occurrence:2}
assert data storage bs:out {string:{find:[0,5]}}

# Test with Unicode
data modify storage bs:in string.find merge value {str:"éàêëàéêë",substr:"êë"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[2,6]}}

# Test case sensitivity
data modify storage bs:in string.find merge value {str:"Test TEST test",substr:"test"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[10]}}

# Test overlapping patterns
data modify storage bs:in string.find merge value {str:"aaaaa",substr:"aa"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[0,1,2,3]}}

# Test substr not found
data modify storage bs:in string.find merge value {str:"hello world",substr:"notfound"}
function #bs.string:find {occurrence:0}
assert data storage bs:out {string:{find:[]}}
