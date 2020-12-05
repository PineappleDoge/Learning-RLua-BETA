# Loops

In programming, it's very often that we'll want to repeat code. Whether it's repeating the same code to a lot of objects, or just repeating code until something happens, we'll want to familiarize ourselfs with the concepts of `loops`.

In RLua, there are 3 types of loops, `while`, `for`, and `repeat` loops. Each of these loops has varying uses, but they all allow you to repeat sections of code. There's techinally a 4th loop called `recursion`, but we discussed that in [functions](./chapter_21_Functions.md), and this chapter will only lightly go over recusion.





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

With while loops, we can also break them manually by using the `break` keyword.
