# Number Guessing Game

Its time to make a number guessing game!

Here are the simple criteria,

1. You print something like `Guess the number`
2. You generate a random number
3. You get a number from the user
4. You check that number against our random number
5. Loop

You may be asking about the random number and getting input so ill say some functions that could be helpful.

- `io.read(mode)` - Read a line from the user
- `math.random(min, max)` - Get a number between min and max

For `mode` in `io.read`, we recommend `*n`.

Here is a starting base.

```lua
-- Start loop

local ranNumber = math.random(0, 10)

-- Tell them something like `Im thinking of a random number`

local input = io.read('*n')

-- Check against ranNumber

-- If is ranNumber is equal to input
-- Tell the user
-- If not
-- Tell the user it was not
```

> #### Side note
>
> This will not work in Roblox.
> Roblox does not allow io.read so you can either download Lua or use Repl.it (see below)

<iframe height="400px" width="100%" src="https://repl.it/@SovietKitsuner/NumberGuessingGame?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

Stumped? The solution is located at [Number guessing game](./sol01-08-number-guessing-game.md)
