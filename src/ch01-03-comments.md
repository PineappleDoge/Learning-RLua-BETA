# Comments

Like any programming language, RLua has comments. A comment is something which is not parsed by RLua.

```lua
-- Hello I am a single line comment
-- local x = 5
-- That code will not be ran

--[[
Hello I am a multiline comment
I spam multiple
lines
You may recognize this as the multiline
string
]]
```

Comments are good for describing what code does. However, it can be bad to have too many. For example, it can become redundant.

```lua
local x = 5 -- This sets the value of x to 5
```

And it can become hard to keep track of these and the comments can start to lie.

```lua
local x = 3 -- This sets the value of x to 3
```

This is since you can forget to update comments and the comments will now be invalid.

```lua
local x = 3 -- This sets the value of x to 3

local y = x + 2 -- This sets the value of y to x plus 2
```

It can also be documenting self documenting code.

Overall, keep comments for your future self but keep them sparingly.
