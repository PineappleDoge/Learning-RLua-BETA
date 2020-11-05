# Control Flow

What if you need to compare something? What if you need to make sure that a mob drops loot after they die? What about making sure that a player has enough money to buy a sweet new item from the store? We learned about variable types and how to manipulate them, but how do we actually check and do stuff?

Lucky for us, RLua comes with a convenient set of conventional statements. Statements in programming allow us to execute code depending on a **condition’s return value**.

Before we go into any examples, we should go over what a truthy value is. A truthy value is a value which RLua considers to be true.

These are falsely values

- `nil`
- `false`

All other values are considered to be _truthy_

Now we can look at some simple examples which could be done with our logical operators.

```lua
if 2 > 1 then
  print("Two is bigger than one!")
end
```

In this example, we’re comparing the first value (2) to the second value (1). In math, 2 is bigger than one, so it’ll print “Two is bigger than one!”. If statements only run code if the statement is true, so if you want the code to run when the statement is false, you’ll need to add an else to the if-statement.

```lua
if not 2 > 1 then
  print("Two is not bigger than one!")
else
  print("Two is bigger than one!")
end
```

Else branches aren’t required for if-statements to run, but they’ll run if your previous statement returns false.
In this example above, the output would print “Two is bigger than one!”.

As we learned in the previous chapter, RLua has relational operators, so we can use any of those to compare values.

```lua
if 10 ~= "Twenty" then
  print("10 is a number, Twenty is a string!")
end
```

Along with if-statements, you don’t even need to indent them. While it’s good practice to indent your if statements, you can condense them into a single line if it’s a quick check. If it is a quick check, you can always use those logical operators.

```lua
local number = 5

if number < 20 then print("number is less than 20!") end

-- Or

local _ = number < 20 and print("number is less than 20!")
-- You don't need to worry why we need the `local _ = ` part
```

That’s great and all, but wouldn’t it be a lot of code to constantly chain multiple separate if’s together? Along with those basic if-else statements, RLua is also capable of chaining multiple of them together, using elseif branches. These are almost identical to using multiple if-statements, but allows you to wrap all of them in a single end.

Here’s a code block to help you out! Like normal if-then-else statements, only one of these conditions would be executed, but it’s useful for comparing more than 1 value without creating multiple separate checks.

```lua
local number = 3
local hasNumberBeenFound = false
local foundNumber = nil

if number == 1 then
  hasNumberBeenFound = true
elseif number == 2 then
  hasNumberBeenFound = true
elseif number == 3 then
  hasNumberBeenFound = true
end
```

Notice how we only start off with one if statement, and the rest chain off into elseif branches? This is especially useful for when we want to check for 2+ values, but don’t want to messy up our code by writing separate if-statements to check 1 value at a time.

We can also do this with those logical operators.

Control flow is more about if statements like stated before. We have other "blocks" like do blocks.

```lua
do
  print("Hi")
end
```

This is since all blocks are in their own scope. Lets take a look at the example from [variables global vs local](./ch01-01-variables.md#global-vs-local) Specifically this example.

```lua
do
  local data = 5
end

print(data)
```

When we ran this we got `nil` in the output. This is due to the scope.

```lua
-- Global scope
do
  -- Local scope
  local data = 5
end

print(data)
```

You can think of scopes as a pyramid, whatever is at the bottom can see the top but the top can't see the bottom.

If a variable makes a change to the upper scope, then it will be able to see it.

```lua
local data = 0

do
  data = 5
end

print(data)
```

What we get in the output is `5` since `data` was changed to `5`.

Now like said in the variables example, removing the local will make it accessible to the outside scope.

This is since without local, it defines the variable in the global scope and not the local scope. Now you see why its called `local`.
