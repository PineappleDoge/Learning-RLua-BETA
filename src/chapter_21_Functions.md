# Functions

Functions are chunks of code that can be written once, and then executed by using a command. Functions are perhaps one of the key principals of D.R.Y (Don't Repeat Yourself). They allow us to reuse code, and execute code in different areas of our script after our function has been defined. 

Functions are most notably defined by a name, followed directly by parathesis `()` `EX: wait()`. To define a function, we'll want to start off with the keyword `function`, follow by the function name, and then end it with parathesis `()`. After defining that, we'll want to close our function with the `end` keyword.

```lua
function AddNumbers()
    print("Running")
end
``` 

Just like that, we've defined a function! Anything between the `()` and the `end` will be considered apart of the function, and will execute when called. If we run this statement of code, you might notice something strange. Why doesn't the function run?





## Function Calling

When working with functions, it's important to know that they are not `self-executing`. This means that the function will not execute until it's called upon? After defining a function, we can execute it by simply typing the function's name followed by parathesis `()`.

```lua 
function AddNumbers()
    print("Running")
end

AddNumbers()
```

The benefit of being able to call a function to run is that it gives us much more flexability when executing code. All we need to do is call the function after it's been defined, and we can run that code anywhere. We can even run the function multipile times!

```lua 
function AddNumbers()
    print("Running")
end

AddNumbers()
AddNumbers()
AddNumbers()
AddNumbers()
AddNumbers()
```

Another important thing to note is being able to execute functions when an event is triggered. This'll be explained more in a future chapter, but think of events as signals whenever something happens. Here's a code sample for you, you don't need to know exactly what's happening, except that the function is being executed everytime a player joins the game.

```lua
local Players = game:GetService("Players")

function OnPlayerAdded() -- runs whenever a player joins the game
    print("New player has joined the game!")
end

Players.PlayerAdded:Connect(OnPlayerAdded)
```





## Function Parameters & Arguments

Alongside being able to call functions at any point after they've bene defined, we can also program our functions to expect parameters, and pass arguments through them. Confused? Here's an visual example of a function with parameters. We program our function to accept 2 parameters, add them together, and print out the result. When our function is called, we pass 2 and 4 as arguments.

```lua
function AddNumbers(number1, number2) -- parameters
    print(number1 + number2)
end

AddNumbers(2, 4) -- arguments
```

When passing arguments to a function, it's important to separate them with the usage of commas. It's important to know that you're the one in control when writing functions with custom arguments. Not all parameters of a function need to be used, but forgetting to pass an argument while not having a default value in your code will error.





## Functions and return

While functions can receive data and act upon it, it's equally as important to know functions can send back data. By using the keyword `return`, followed by data, we can retrive the "result" of a function and set that to a variable.

```lua
function AddNumbers(number1, number2) 
    local Result = number1 + number2
    return Result
end

local Sum = AddNumbers(2, 4)
print(Sum)
```

As a note, it's important to know NOT to type anything after your return. Return essentially stops the current scope, and any code after that will error. With RLua, we can also return multiple values with return.

```lua
function AddAndSubtractNumbers(number1, number2)
    local Sum = number1 + number2
    local Difference = number1 - number2
    return Sum, Difference
end

local