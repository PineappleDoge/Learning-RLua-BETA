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

These 4 aren’t all the possible data types that RLua contains, but it’s a good starting point for learning. The other data types will be discussed in their own dedicated future chapters in the book, but we’ll focus on these four right now, due to them being essential and the building blocks to more advanced topics.

These 4 types plus 3 more complex types make up _almost_ everything.

- String
  - This data type represents text and are represented by text surrounded with `" "`, `' '`, or `[[ ]]`
- Number
  - This data type represents numbers and can contain decimals. 
- Boolean
  - This data type represents `true` or `false` and uses the keywords `true` and `false`. Think of it like a lightswitch
- Nil
  - This data type represents the lack of data. It's very important to know that this datatype shows how there's no data attached.





## Strings

As we mentioned before, strings represent text. Strings can be represented by text surrounded by `" "`, `' '`, or `[[ ]]`. Here's a visual example of all the strings going at work.

```lua
local String1 = "First String!" 
local String2 = 'Second String!'
local String3 = [[Final String!]]
```

All of those are valid ways to create a string, although that doesn't mean we can mix and match them exactly. When creating a string, it's required to start and end the string with the same symbol, or otherwise it'll consider the string incomplete and error.

So now that we know how to create strings, that natually creates more questions about the limits of strings. When creating strings, it's important to know what we can and can't do with them. A common issue is how to create multiline strings. A nice thing to know about `[[ ]]` is that it's multiline. 

```lua
local FailedMultilineString = "Oh no, 
this is not multiline" 

local FailedMultilineString = 'Oh no,
this also is not multiline'

local CorrectMultilineString = [[Ok, this
is much better!]]
```

Now that we know how to create multiline strings, we'll need to figure out how to contain string creation characters `[[]]`, `" "`, `' '` in strings. One method we can use is called escaping. This is done with the `\`(backslash)

```lua
local double = "So then he said \"Wow, this is escapism!\""
local single = 'So then he said "Wow, this\'ll work too!"'
local AnotherEscapism = [["Wow", he said. "I didn't know this would work"]]
print(single, double)
```

To summarize what the code does, it allows us to tell our code to ignore the upcoming lines. This allows us to put string symbols in strings without it ending off the string or creating a new one, causing an error. Below is a extensive list of ways you can incorporate escapism in code.

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

Awesome! We've discussed multiline strings and having string symbols in strings, but what about combining strings? In the example below, we discuss a way to combine separate strings into 1 giant string.

```lua
local Hello = "Hello, "
local World = "World!"

local HelloWorld = Hello .. World
```

`..`, otherwise known as concatenation, is an operator which can be used to connect two strings together. There are more to strings which you can read at <https://developer.roblox.com/en-us/api-reference/lua-docs/string>.





## Number

Numbers are argubably one of the most important datatypes within RLua. Alongside storing data as numbers, we can also perform mathmathical operations on numbers. Below are some quick but practical examples of performing math,.

```lua
local Sum = 5 + 3
local Product = 5 * 3
local Remainder = 5 - 3
local Division = 6 / 3
```

Alongside being able to perform math operations using numbers, we can perform operations using variables that store numbers. Reminds you of algebra, doesn't it? Here's an example below:

```lua
local a = 6
local b = 4

local c = a * b + 5
```

Cool, isn't it? Besides the basic 4 operations, RLua also supports the following operations below. 

- `+` addition
- `-` subtraction
- `*` multiplication
- `/` division
- `%` modulus
- `^` power

RLua also follows the Order Of Operations (OOO). 

```lua
local x = 5 * 2 + 2

local y = 5 * (2 + 2)
```

The values of `x` and `y` are different because of the order of operations. There is much more you can do with numbers and you can check the [standard math library](https://developer.roblox.com/en-us/api-reference/lua-docs/math)





## Booleans

Booleans are just values which represent `true` or `false` (or both...).  

```lua
local trueBool = true
local falseBool = false
```

Booleans are commonly used within if statements which will be covered in [control flow](./ch01-05-control-flow.md). All operators return booleans, think of things like `>` and `==`. These are extensively used to see if an operation is true (or not).

```lua
local IsTrue = 5 > 2
local IsFalse = 5 < 3 

print(IsTrue)
print(IsFalse)
```





## Type interaction

IN RLua, different types can have different interactions. 

```lua
local str = "1"
local num = 2

local combo = str + num
print(combo)
```

You might've thought that strings couldn't be added with numbers, and you would be correct. However, RLua has a type interaction system that allows numbers to interact 

```lua
local str = "a"
local num = 2

local combo = str + num
```

This would cause an error along the lines of `attempt to perform arithmetic on a string value`. Errors like these happen whenever you try to perform addition on non-number values.





## Type casting

You heard of the some functions like `tonumber` and possibly `tostring`. This is called explicit type casting. Its explicit as you have to write these functions. Lua also has **implicit** type casting. For example, the `"1" + 2` was implicit. We didn't have to tell Lua to convert the string to a number. Some more examples would be concatting a string and number.

```lua
local combo = "Hello I am " .. 100 .. " years old!"
```

The output would be `Hello I am " .. 100 .. " years old"!`

In the next chapter, we'll be discussing if-statements, while loops, and general [control flow](./chapter_13_Control_Flow.md).
