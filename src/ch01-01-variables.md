# Variables

One of the most fundamental things about Lua (and RLua by extension!) are variables.

They are how you old data within a container. There are 2 methods that you can create variables.

By default, all variables are global. This means that they are accessible anywhere.

Variables are defined as a name, `=`, then data.

```lua
data = 0
```

This method is considered bad practice and so will not be used throughout this book.

The other method would be prefixing it with `local`

```lua
local data = 0
```

The reason why you prefix variables with local is related to [control flow](./ch01-05-control-flow.md).

## Variable naming

### Invalid names

A key thing about variables is that they can't start with numbers.

```lua
local 1data = 0
```

Roblox will tell you something along the lines of `malformed number near '1data'`.

You can have numbers in the middle of variables.

```lua
local data1 = 0
```

There are also some characters you can't have outright in a variable name.

* Brackets ( ), { }, [ ], < >
* Operators * + - /
* Special characters @ # $ % ^ & ! ` ~ = , ? ' " ; :

*Technically* you can have these as variables by using some "illegal" techniques.

### Practices

Lua tends to lean to being `camelCase`. Roblox on the other hand names with `PascalCase`.

You may question what is the difference between the two.
The difference is that in `camelCase` the first character is lowercase while in `PascalCase` the first letter is capital.

```lua
local camelCase = 0

local PascalCase = 0
```

## Global vs local

The first example we saw would be a global variable. Global variables can be accessed from almost anywhere.

```lua
do
  data = 5
end

print(data)
```

You don't need to know what the majority of this code does for now.

The `print` at the end is a function part of the [Lua standard library](https://developer.roblox.com/en-us/api-reference/lua-docs/Lua-Globals)

> #### Side note
>
> There is a difference between the Lua standard library and the Roblox standard library.
> The Roblox standard library is quite large as it contains things like input and monetization
> The entire Roblox standard library can be found at <https://developer.roblox.com/en-us/api-reference>

The `do` and `end` are things which you can think of like a box. What ever happens within them you can't really see unless they go out.

This will get explained more in [control flow](./ch01-05-control-flow.md).

Click `Run` or `Play` and open the [console](https://developer.roblox.com/en-us/articles/Developer-Console). Inside it you get

```log
5
```

Or something along those lines. Now lets make `data` local.

```lua
do
  local data = 5
end

print(data)
```

You may think the console will contain `5` again right? This is not true. Run the code and check the console.

```log
nil
```

You get `nil`, you may ask, what is nil? Nil basically means nothing, this will be explained more in [data types](./ch01-02-data-types.md).

Now, the question is, why did you get `nil`. This is since of the box of `do` and `local`.

Since of this, its considered good practice to use `local` to prefix your variables.

## Mutability

All variables in RLua are mutable by default and without using [metatables](https://www.lua.org/pil/13.html)

```lua
local data = 5

data = 3
```

We can change the value of these variables without any special syntax.

You may point out the `data = 3` part and how its like the global variable definition.

The difference is that we used `local data = 5` before it. Before defining a global, RLua checks if there is a local.
