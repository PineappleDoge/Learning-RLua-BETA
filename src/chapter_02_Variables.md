# Variables

One of the most fundamental things about Lua (and RLua by extension!) are variables. By using variables, we gain the ability to store and reference data. In RLua, there's two ways we can create variables, by either using a local scope or global scope. By default, all variables are considered global unless defined otherwise. Variables are defined as a name, `=`, then data.

```lua
data = 0
```

Alternatively, we can create varaibles in another way, by prefixing our variable name with the `local` keyword.

```lua
local data = 0
```

Why are we doing this? What's the difference? Well, there's 2 main reasons why you would prefix it with local. The biggest reason is due to `scope`. We'll get more into that in a future chapter, but for a short explanation, variables cannot share the same name. Another reason, although less important, is performance. It's generally good practice to prefix variables with local to show that you're defining a variable. For the rest of this book, we'll be using the local keyword to construct variables.





## Invalid Variable Names

In RLua, there's correct ways and incorrect ways to construct variables. Constructing variables is generally lax, but there's important edge-cases we need to realize while constructing variables names. In a short, comprehensive list that's been constructed for your viewing pleasure, there's a general list of things to watch out for when constructing variables.

- Creating variable names with a number at the beginning `local 1username = "Username Here" `
- Creating variable names with spaces `local PlayerUsername = "Username Here"`
- Creating variable names with any of the below, no matter where they're located 
- - Brackets ( ), { }, [ ], < >
- - Operators \* + - /
- - Special characters @ # \$ % ^ & ! ` ~ = , ? ' " ; :

_Technically_, you can have these as variables by using some "illegal" techniques, but those may or may not be discussed later





## Global Vs Local
As discussed earlier, variable names can be created in multiple scopes, either local or global. By default, variables are considered global, but what's the difference? With global variables, the greatest difference is that they can be accessed in any scope after they're defined. To show this off, we'll use the code sample below.

```lua
do
  globalVariable = "Accessed"
end

print(globalVariable)
```

Once again, this'll be explained more in a different chapter, but we'll go over a basic idea of scope. A scope is the context of a program in which variables can be accessed, used, or validated. Scopes can be separated by functions, while statements, do-end statements, and if-statements. When a variable is in a different scope, and is considered local, it cannot be accessed by scopes different from it.





## Practices

Lua tends to lean to being `camelCase`. Roblox on the other hand names with `PascalCase`. You may question what is the difference between the two. The difference is that in `camelCase` the first character is lowercase while in `PascalCase` the first letter is capital. This is mostly for visual clarity, it doesn't have an effect on the code itself.

```lua
local camelCase = 0
local PascalCase = 0
```

When creating variable names, it's a great idea to be descriptive with the naming. Variable names should be representitive of the data stored in them, and named as such. It's always better to type a longer name rather than a 1-5 letter shortization of it. 

```lua
local PlayerUsername = "Username_0001" -- Great Example!
local Plr_Username = "Username_0001" -- Good Example! 
local PrUsr = "Username_0001" -- Not a good example...
```





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
