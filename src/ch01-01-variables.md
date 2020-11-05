# Variables

One of the most fundamental things about Lua (and RLua by extension!) are variables. By using variables, we gain the ability to store and reference data. In RLua, there's two ways we can create variables, by either using a local scope or global scope. 

By default, all variables are considered global unless defined otherwise. Variables are defined as a name, `=`, then data.

```lua
data = 0
```

This method is considered bad practice and so will not be used throughout this book. The other method would be prefixing it with `local`

```lua
local data = 0
```

The reason why you prefix variables with local is related to [control flow](./ch01-05-control-flow.md).

## Invalid Variable Names

In RLua, a key note about variable construction is that you can't start variable names with numbers. 

```lua
local 1data = 0
```

Roblox will tell you something along the lines of `malformed number near '1data'`. However, you can have numbers in the middle and end of variable names

```lua
local data1 = 0
local da1ta = 0
local d1data = 0
```

There are also some characters that are restricted from being apart of variable names, no matter where they're located.

- Brackets ( ), { }, [ ], < >
- Operators \* + - /
- Special characters @ # \$ % ^ & ! ` ~ = , ? ' " ; :

_Technically_, you can have these as variables by using some "illegal" techniques, but those may or may not be discussed later

## Practices

Lua tends to lean to being `camelCase`. Roblox on the other hand names with `PascalCase`. You may question what is the difference between the two. The difference is that in `camelCase` the first character is lowercase while in `PascalCase` the first letter is capital.

```lua
local camelCase = 0
local PascalCase = 0
```

## Global Vs Local
The first example we saw would be a global variable. Global variables can be accessed from almost anywhere.

```lua
do
  data = 5
end

print(data)
```

You don't need to know what the majority of this code does for now, the important thing to understand that you can access the `data` variable from different scopes since it's global. The `print` at the end is a function part of the [Lua standard library](https://developer.roblox.com/en-us/api-reference/lua-docs/Lua-Globals) The `do` and `end` are things which you can think of like a box. What ever happens within them you can't really see unless they go out. This will get explained more in [control flow](./ch01-05-control-flow.md).

> #### Side note

> There is a difference between the Lua standard library and the Roblox standard library.
> The Roblox standard library is quite large as it contains things like input, monization, and other Quality-Of-Life (QOL) functions.
> The entire Roblox standard library can be found at <https://developer.roblox.com/en-us/api-reference>

Click `Run` or `Play` and open the [console](https://developer.roblox.com/en-us/articles/Developer-Console). The expected console output would be 5, or something along those lines

```log
5
```

Now that we've established global variables and how they work, we should describe local variables. Local variables are similar to global variables, except for the fundamental difference in **scope**. Local variables are limited to the scope that they'll defined in, and can't be accessed by any other scope.

```lua
do
  local data = 5
end

print(data)
```

In the example above, the output is `nil`, but why? This is because of the scope that they're created in. In the beginning of the script, we create a new scope by typing `do`, and close that scope off with `end`. While the data variable is defined in that scope, the print statement isn't, so the print statement doesn't know what data is, and defaults to nil.

```log
nil
```

You get `nil`, you may ask, what is nil? Nil basically means nothing, this will be explained more in [data types](./ch01-02-data-types.md). Now, the question is, why did you get `nil`. This is since of the box of `do` and `local`. Since of this, its considered good practice to use `local` to prefix your variables.

## Mutability

All variables in RLua are mutable by default and without using [metatables](https://www.lua.org/pil/13.html). By being mutable, we can change the value of a variable at any time after the variables been defined. In the example below, we create a local variable called data, and then change it later on in the script.

```lua
local data = 5

data = 3
```

If you're reading the code, you might notice how `data = 3` is kind of like defining a global variable. A very important thing to understand is that when doing checks like this, RLua checks if there's a pre-existing variable with the same name. If a variable is found, it'll use that variable to apply changes, otherwise it'll create a new variable. 
