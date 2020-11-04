# Functions

Functions are how you run pieces of code from another location. For example, `print` is a function.

```lua
print "hi"
```

We can define a function using `function name() end`.

```lua
function name()

end
```

That is syntactically sugar for

```lua
name = function()

end
```

As you can see, `name` is not local. We can make it local by using `local function name() end`.

```lua
local function name()

end
```

Which becomes

```lua
local name = function()

end
```

Now we see, its what we want, a local variable. Now lets talk about how it works.

Like with if statements and do blocks, functions are also a block.

```lua
local function name()
  local hi = "hello"
end

print(hi)
```

Another thing is that the code within them are not ran immediately.

```lua
local function hello()
  print("Hello")
end
```

Nothing happens, this is since functions need to be called. In fact, `print` is a function.

```lua
hello()
```

Now if we run the code we see `Hello` in the output.

Some more special things about functions are that it accepts parameters.

```lua
local function hello(name)
  print("Hello " .. name .. "!")
end

hello("John")
```

When we run this we get `Hello John!` in the output.

Great, we can pass variables into our function. What else can we do from a function? We can call the function itself!

```lua
local function fib(x)
  if x < 2 then
    return x
  else
    return fib(x - 1) + fib(x - 2)
  end
end

print(fib(10))
```

This is a famous example of recursion, a fibonacci function. Here we call the function `fib` from within itself.

If we don't put some sort of stop, it'll iterate forever.

```lua
local function stackOverFlow()
  stackOverFlow()
end

stackOverFlow()
```

Running that will get something like `stack overflow` in the output.

Basically how RLua handles functions is using a stack.

```
 _______
|_______|
```

You can think of a stack like a stack of books When we run that function we put books onto the stack of books.

```
 _______
|_______|
 _______
|_______|
```

At some point the stack is going to collapse and this is a `stack overflow`.

Whenever we call a function, we add a book to the stack.

A book is cleared whenever we exit the current function.

```lua
local function test()
  -- 2 Books
  print("Hi") -- Wherever print is, it'll be on the 3rd book
  -- Back to 2 books
end

-- Here we are at 1 book on the stack (it'll be explained why at 1 instead of 0)
test()
-- Back to 1 book
```

However large the stack can get before collapsing depends on the memory allocation.

Another special thing about functions is that they can "return" a value.

```lua
local function get5()
  return 5
end

print(get5())
```

What this does make it so when you call the function, it return 5 to whatever wants it.

```lua
local x = get5()

if x == 5 then
  print("x is equal to 5!")
end
```

## Challenge

Here is a fun challenge in order to test your knowledge so far.

Create a function that multiplies the 2 parameters by each other **if** the sum of them is greater then 10. If not, return 0.

> #### Bonus
>
> A bonus challenge would be to do this without the use of `if` statements
> A suggestion is to look at [operators](./ch01-04-operators.md)

Here is your starting point, don't worry about the `assert` for now.

```lua
local function calc(x, y)
  -- Your code
end

-- Don't worry about me

assert(calc(5, 5) == 0, '5 + 5 < 10, should return 10')
assert(calc(5, 6) == 30, '5 * 6 = 6')
assert(calc(0, 25) == 0, '0 * 25 = 0')
```

Stumped? The solution is located at [functions solution](./sol01-06-functions.md)
