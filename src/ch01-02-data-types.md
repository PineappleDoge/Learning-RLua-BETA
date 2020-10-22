# Data types

One of the most fundamental things about Lua (and RLua by extension!) are data types and variables.

The relationship between data types and variables can be thought of like a name tag and its content. An example would be giving a dog a nickname instead of calling the dog by it’s full name. You can call the nickname, and the dog would be what you’re calling. The benefits of this is that you can contain data in a short, user-friendly nickname so it’s easier to reference throughout your scripts.

RLua has several different data types, we listed the simple/primitive types below.

```lua
local stringType = "Hello"
local numberType = 0
local booleanType = true
local nilType = nil
```

We see `nil` again from our little test of global vs local.

These 4 aren’t all the possible data types that RLua contains, but it’s a good starting point for learning. The other data types will be discussed in their own dedicated future chapters in the book, but we’ll focus on these four right now, due to them being essential and the building blocks to more advanced topics.

These 4 types plus 3 more complex types make up _almost_ everything.

- String
  - This data type represents text and are represented by text surrounded with `" "`, `' '`, or `[[ ]]`
- Number
  - This data type represents numbers and can contain decimals
- Boolean
  - This data type represents `true` or `false` and uses the keywords `true` and `false`
- Nil
  - This data type represents nothing. By default everything has this data type

Now with some more data types we can bring up the "lose" typed nature of RLua. What this means is a number can become a string.

```lua
local foo = 0

foo = "hi"
```

## Strings

As stated before we can define strings by using `" "`, `' '`, or `[[ ]]`. These definitions all have their place.

```lua
local foo = "So then he said "oh no, this doesn't look write""
```

This uses a combination of all the strings and is invalid. If we rewrite it using `' '`, its a bit less bad but still is not syntactically correct.

```lua
local foo = 'So then he said "oh no, this doesn't look write"'
```

One method we can use is called escaping. This is done with the `\`(backslash)

```lua
local double = "So then he said \"oh no, this doesn't look write\""

local single = 'So then he said "oh no, this doesn\'t look write"'
```

Basically what the backslash says is "ignore the next character" or some other things

- `\a` bell
- `\b` back space
- `\f` form feed
- `\n` newline
- `\r` carriage return
- `\t` horizontal tab
- `\v` vertical tab
- `\\` backslash
- `\"` double quote
- `\'` single quote
- `\[` left square bracket
- `\]` right square bracket

Another way we can have this string is by using `[[ ]]`

```lua
local foo = [[So then he said "oh no, this doesn't look write"]]
```

A unique thing about `[[ ]]` is that it is also multiline.

```lua
local single = '
So, this
is
not
very
correct
'

local double = "
So, this
is
not
very
correct
"

local bracket = [[
Now this,
this
is
very
correct
]]
```

Only the `[[ ]]` method will work, all the other ones will say something along the lines of `unfinished string near '"'`.

You can also combine strings together.

```lua
local str1 = "Hello, "
local str2 = "World!"

local str3 = str1 .. str2
```

What `..` means is to combine these 2 strings together.

There are more to strings which you can read at <https://developer.roblox.com/en-us/api-reference/lua-docs/string>.

## Number

Numbers are also one of the most important data types within RLua.

You can use our favorite subject with numbers, math.

```lua
local num = 5 + 3
```

Of course, your not afraid of pure numbers. You are afraid of letters in math so, using variables we can allow that fun.

```lua
local a = 6
local b = 4

local c = a * b + 5
```

There is more then just multiplication and addition

- `+` addition
- `-` subtraction
- `*` multiplication
- `/` division
- `%` modulus
- `^` power

Lua also follows the order of operations

```lua
local x = 5 * 2 + 2

local y = 5 * (2 + 2)
```

The values of `x` and `y` are different because of the order of operations.

There is much more you can do with numbers and you can check the [standard math library](https://developer.roblox.com/en-us/api-reference/lua-docs/math)

## Booleans

Booleans are just values which represent `true` or `false` (or both...).

```lua
local trueBool = true
local falseBool = false
```

Booleans are commonly used within if statements which will be covered in [control flow](./ch01-05-control-flow.md)

All operators return booleans, think of things like `>` and `==`

## Type interaction

Many types can interact with each other or not.

```lua
local str = "1"
local num = 2

local combo = str + num
```

The value of `combo` would be `3` as Lua uses something called `tonumber` and it sees that 1 is a number.

```lua
local str = "a"
local num = 2

local combo = str + num
```

This would cause an error along the lines of `attempt to perform arithmetic on a string value`.

Something like this happens whenever you try to add 2 things together which are not number.

## Type casting

You heard of the some functions like `tonumber` and possibly `tostring`. This is called explicit type casting. Its explicit as you have to write these functions.

Lua also has **implicit** type casting. For example, the `"1" + 2` was implicit. We didn't have to tell Lua to convert the string to a number.

Some more examples would be concatting a string and number.

```lua
local combo = "Hello I am " .. 100 .. " years old!"
```

The value of `combo` would be `"Hello I am 100 years old!"`.
