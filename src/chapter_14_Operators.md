# Operators

As discussed in [Control Flow](./chapter_13_Control_Flow.md), RLua has a lot of operators. Like any programming language, RLua allows you to conduct operations on datatypes. We can use operators in a variety of ways, including to compare, contrast, and connecting datatypes. In the rest of this chapter, we'll take a bit more time to properly discuss operators.





## Mathematical Operations

Like any programming language, RLua allows you to perform mathematical operations on numbers. Simply said, You can add, subtract, multiply, divide, and do other math operations to numerical values. The most basic math operations in lua are multiplication, division, addition, and subtraction. To visualize this in code, I prepared code samples.

There are more advanced mathematical operations in RLua, but these are the core visualizations that are meant to show how it would be represented in code, rather than going over all possibilities.

```lua
-- Mathematical Symbols in RLua

local add = 5
add = add + 5 -- Outputs 10

local sub = 5
sub = TestNumber - 5 -- Outputs 0

local multi = 5
multi = multi * 5 -- Outputs 25

local div = 10
div = div / 5 -- Outputs 2

local mod = 5
mod = mod % 5 -- Outputs 0
```

Great, now we know that numbers can be manipulated through math, but how is that useful to us? One example is that we can now scale parts using scripts! Don’t know what I mean? Let’s take a look at this code sample!

```lua
local part = "I am a part"

local partX = 2
local partY = 3
local partZ = 4

partX = partX * 2
partY = partY * 3
partZ = partZ * 1.5
```

The part would be moved in this imaginary sandbox. Like stated before, this section is for general programming concepts, which means things like part Instances are not going to be talked about.





## Relational Operations

Besides math operations, RLua has relational operations. These are used for comparisons and will always result in **true** or **false**.

- `==` Equal to
- `~=` Not equal to.

These two operations can be used to compare any two values. Along with these 2, there are these ones

- `<` Less than
- `>` Greater than
- `>=` Greater than or equal to
- `<=` Less than or equal to

Lets go and look at some code.

```lua
print(5 == 2) -- false

print(5 ~= 2) -- true

print(2 < 5) -- false

print(5 > 5) -- false

print(5 >= 5) -- true

print(3 <= 2) -- false
```

You may ask, what are these used for? These are used for comparisons and commonly used within if statements.





## Logical operators

RLua also has logical operators. These are things like `and` and `not`. Here are some of them.

- `and` if expr**1** is true and expr**2** is also true, return expr**2** else return `nil`
- `or` if expr**1** is true, return expr**1**, else return expr**2**
- `not` if expr**1** is true, return false, else return true

Lets show some examples using relational operators as well.

```lua
print(5 > 2 and '5 is greater then 2' or '5 is less then 2')

print(5 > 2 or 'Previous expression was false')

print(not 5 > 2 and '5 is not greater then 2' or '5 is not less then 2')
```

If you used other languages, you can think of these like `a ? b : c`. In RLua that would be `a and b or c`.

We can combine these operators together and make even larger expressions.

Usually you would want to use these in place of simple if statements.
