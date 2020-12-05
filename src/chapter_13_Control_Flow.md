# Control Flow

What if you need to compare something? What if you need to make sure that a mob drops loot after they die? What about making sure that a player has enough money to buy a sweet new item from the store? We learned about variable types and how to manipulate them, but how do we perform checks?

Lucky for us, RLua comes with a convenient set of conventional statements. Statements in programming allow us to execute code depending on a **condition’s return value**. Before we go into any examples, we should go over what a truthy value is. A truthy value is a value which RLua considers to be true.

These are falsely values

- `nil`
- `false`

All other values are considered to be truthy. Now we can look at some simple examples which could be done with our logical operators.





## If Statements

When we want to compare values, we'll often fall back on if statements. If statements allow us to compare values with each other, and choose what code to run. Sounds confusing, doesn't it? Here's an example to help visualize what if-statements look like practically. 

```lua
local Five = 5
local Four = 4 

if Five > Four == true then 
  print("5 is bigger than 4!")
end
```

When using if statements, we're comparing two values against each other. We can compare variables against each other, or compare variabes against a pre-defined value. In the example above, we compared the result of five being bigger than four. If it equaled true, the output would print (5 is bigger than 4). If statements are especially useful for comparing values and making sure we only run code when our conditions are met, but what if we want code to run if it isn't met?

Often times, we'll want to have some code run when an if-statement fails, often for security or to let us know the code didn't reach it's first statement. To do this, we can add an else to our if-statement. Else isn't needed to construct an if-statement, but we can use it if our initial check fails. 

```lua 
local Five = 5
local Four = 4

if Five < Four  then 
  print("5 is smaller than 4!")
else 
  print("5 is bigger than 4"!)
end
```

Notice how only our last piece of code ran? An important thing to note about this is that **both checks will never run**. This is important to know, since it only checks if the first comparision is true or not. 

Ok, great, we know now how to use if-statements. Another useful fact about if statements is the `elseif`. When we want to do more than 1 check, we can string elseif's into our if statement.

```lua
local Five = 5

if Five == 3 then
  print("5 = 3")
elseif Five == 4 then
  print("5 = 4")
elseif Five == 5 then
  print("5 = 5")
else 
  print("Not known")
end
```

This is especially useful for when we want to condense a bunch of checks into a single if-statement. 





## While Loops

Sometimes, we'll want a piece of code to constantly run. In RLua, we have a convenient way to have a check going. We can use `while loops`, a piece of code that repeats whatever is inside it until the condition is false, or the loop is manually broken. To show a visual example, here's a code sample. 

```lua
while true do
  print("Running")
end
```

While true do loops run very fast, so performing heavy operations in a while loop will most likely crash your current console. To prevent this, we can add a delay, or wait() to our code to give it a very short break before running. 

```lua
while true do
  wait()
  print("Running")
end
```

Alongside while true do loops, we can replace the true with another conditional statement. In the statement below, we replaced the `true` part with our own conditional statement.

```lua
local Five = 5
local Four = 4

while Five > Four do
  print("Running")
end
```

See? Our code still runs just fine. In the next chapter, we'll be discussing [operators](./chapter_14_Operators.md) in more depth. 
