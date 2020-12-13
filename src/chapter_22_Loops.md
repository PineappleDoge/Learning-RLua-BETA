# Loops

In programming, it's very often that we'll want to repeat code. Whether it's repeating the same code to a lot of objects, or just repeating code until something happens, we'll want to familiarize ourselfs with the concepts of `loops` .

In RLua, there are 3 types of loops, `while` , `for` , and `repeat` loops. Each of these loops has varying uses, but they all allow you to repeat sections of code. There's techinally a 4th loop called `recursion` , but we discussed that in [functions](./chapter_21_Functions.md), and this chapter will only lightly go over recusion.

## While Loops

Sometimes, we'll want a piece of code to constantly run. In RLua, we have a convenient way to have a check going. We can use `while loops` , a piece of code that repeats whatever is inside it until the condition is false, or the loop is manually broken. To show a visual example, here's a code sample. 

``` lua
while true do
  print("Running")
end
```

While true do loops run very fast, so performing heavy operations in a while loop will most likely crash your current console. To prevent this, we can add a delay, or wait() to our code to give it a very short break before running. 

``` lua
while true do
  wait()
  print("Running")
end
```

Alongside while true do loops, we can replace the true with another conditional statement. In the statement below, we replaced the `true` part with our own conditional statement.

``` lua
local Five = 5
local Four = 4

while Five > Four do
  print("Running")
end

print("Continuing!")
```

Notice how we never get to the seocnd print statement n out code? Another thing to note is that while loops *yield* the script, much like the *wait()* function. This means that anything under the while loop won't continue until the while loop is broken. 

With while loops, we can also break them manually by using the `break` keyword. When putting this word in a while loop, it'll break the while loop and continue to run the rest of the script. 

``` lua
local Number = 1

while true do 
    if Number >= 10 then
        break
    end

    wait(1)
    Number = Number + 1
    print(Number)
end

print("While loop ended, continuing on with the rest of the script!")
```

You'll notice how the second print statement now runs, that's because of our if-statement at the top of the loop, which checks if Number is greater or equal to 10. If it is, we break the current while-loop and proceed with the rest of our code. 

## For loops

For loops are similar to while loops, in the sense that they repeat code. The fundamental difference between these two loops is the application that they're used in. While loops can be used to repeat code until a condition is met, while for loops allow you to run commands or a group of commands a set amount of times. 

All for loops have a control variable, start, end, and an optional incremental value. In the example below, the count is

``` lua
local count = 1
local endValue = 5

for count, endValue do
    print(count)
end

print("For Loop!")
```

You might notice the count value going up, Unlike while loops, once it's done iterating, it'll continue to run the rest of the code. For loops can also contain an optional increment value (defaults to 1), which can either count up or down depending on if it's a positive or negative value. As a note, `index` will be used instead of `count` for the rest of this book.

``` lua
local count = 1
local endValue = 5
local incrementValue = 0.5

for count, endValue, incrementValue do
    print(count)
end

print("For Loop!")
```

Pretty useful, huh? For Loops can also iterate through **tables** (explained more in [this chapter about tables](./chapter_23_tables.md)). To summarize the concept of tables, it's basically a container that we can use to store lots of data. The difference between variables and data is how we're able to access mass amounts of data from a table. You don't need to have a strong understanding of tables for this, we'll go in more depth later. 

For loops can iterate through all the objects in a table, and use those values. Guess what we do in the example below?

``` lua
local TestTable = {5, 4, 6, 12, 50}

for index, number in pairs(TestTable) do
  print("Original number: " .. number)
  number = number + 5
  print("Output: " .. number)
end

print("Numbers finished adding")
```

In this example, we run a series of short commands. When iterating through an `array` (a special type of table), we can get the placement of the array, and the value `(index = placement, number = value)` . We use the value **number**, print it's original value, add it by 5, and then print the new value. 

## Repeat Loops

Repeat loops are similar to While Loops, except that the conditional is evaulated after the code is ran. To understand the differences, we'll have to look at a way repeat loops are structured.

``` lua
repeat
-- code here
until conditional
```

As shown above, repeat loops will always run `-- code here` , then check if the conditional is met. Like the rest of the loops discussed here, they yield scripts until they're broken. For a more detailed example of repeat loops, read below.

```lua
local repeatTries = 5
local currentTries = 0

repeat
  currentTries = currentTries + 1
  print(currentTries)
  wait(1)
until currentTries == repeatTries

print("Exceeded maximum tries.")
```

Like all other loops, we can forcibly end it by using the `break` keyword. 

```lua
local repeatTries = 5
local currentTries = 0

repeat
  currentTries = currentTries + 2
  print(currentTries)
  wait(1)

  if currentTries > repeatTries then
    print("loop broken")
    break
  end
until currentTries == repeatTries

print("Exceeded maximum tries.")
```

In the next chapter, we'll be discussing [tables](chapter_23_Tables.md), a way to store mass amounts of data in a easy to reference object.
