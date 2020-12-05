# Loops

In programming, it's very often that we'll want to repeat code. Whether it's repeating the same code to a lot of objects, or just repeating code until something happens, we'll want to familiarize ourselfs with the concepts of `loops`.

In RLua, there are 3 types of loops, `while`, `for`, and `repeat` loops. Each of these loops has varying uses, but they all allow you to repeat sections of code. Technically there is the `recursion` loop we found within [functions](./ch01-06-functions.md) chapter.

To start off, we'll go over the while loop. The while loop is structured like below.

```lua
local x = 0

while x < 10 do
  x = x + 1
  print(x)
end
```

With while loops, they're structured in a way that sort of references if-statements. The important part to note about while loops is the conditional. In this while loop, the conditional is `x < 10`. Until this condition is invalid, all the code between the initial `while ___ do` and the `end` will be repeated. This loop will run 10 times before breaking due to the condition no longer being valid. What if we want to end our loop early though?

```lua
local x = 0

while true do
  x = x + 1
  print(x)

  if x == 5 then 
    break
  end

end
```

Notice anything different? We're introducing a new keyword, `break`! The break keyword can break any loop as soon as it's called, effectively terminating loops as soon as you want. This is useful for when 

```lua
for x = 1, 10 do
  print(x)
end
```

Repeat loop

```lua
local x = 0

repeat
  x = x + 1
  print(x)
until x >= 10
```

Recursion loop

```lua

-- Pure method
local function loop(x)
  print(x)
  if x < 10 then
    loop(x + 1)
  end
end

loop(1)

-- Impure method

local x = 1

local function loop()
  print(x)

  if x < 10 then
    x = x + 1
    loop()
  end
end

loop()
```

---

If you run all of these, they all print numbers from 1 to 10.

Every loop has its own time and purpose to be used in place of one another.

For example, in this situation, the for loop was the most efficient manner of doing things.

Where a while loop would be better is where you can be jumping back and forward.

For a repeat loop, its where you need to do `x` until `y` is true, the opposite of a while loop.

A recursive loop is good for situations when you need to yield and have control of when you are going to next loop.

All but the recursive loop can be stopped by using `break`.

```lua
while true do
  print("Endless power!!!!")
end

print("Or not...")
```

This loop, when ran will go forever or until the script is exhausted. The script will never print `Or not...`.

We can stop this by using `break`

```lua
while true do
  print("Endless power!!!")
  break
end

print("Or not...")
```

Now this script will print `Or not...` and `Endless power!!!` only once. This applies to a for and repeat loop as well.

Out of these 3, the for loop is the most unique.

```lua
while x do

end

repeat x

until x
```

The while and repeat loop until x is false in case of while and until x is true in case of repeat.

As we saw in the for loop,

```lua
for i = 1, 10 do

end
```

It doesn't take a boolean but instead a count.

```lua
for counter = start, toCountTo, countBy do

end
```

By default, countBy is set to `1`. Count by is the amount to add to the counter each iteration.

There is a second version of the for loop called the for in loop.

```lua
for vars in iterator do

end
```

The most common iterator would be [pairs](https://www.lua.org/pil/7.3.html). It is commonly used to iterate tables.

```lua
for index, value in pairs({1, 2, 3}) do

end
```

You don't need to worry about the `{` `}` syntax. As it is more of a Lua feature, it'll be covered in a different chapter.

lets print the `index` and `value` variables and see what we get.

```lua
for index, value in pairs({1, 2, 3}) do
  print(index, value)
end
```

In the console we get something like

```
1    1
2    2
3    3
```

Lets change what we give `pairs` to be `{1, 3, 2}`. Now if we run it we get something like

```
1    1
2    3
3    2
```

We see it prints out in the order of what we passed in. We will talk more about for in loops when we get to tables.
