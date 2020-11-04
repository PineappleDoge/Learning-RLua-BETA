# Number Guessing Game

Solution for [number guessing game](./ch01-08-number-guessing-game.md)

```lua
-- Start loop
while true do
  local ranNumber = math.random(0, 10)

  -- Tell them something like `Im thinking of a random number`
  print("Im thinking of a random number between 0 and 10")

  local input = io.read('*n')

  -- Check against ranNumber
  -- If is ranNumber is equal to input
  if input == ranNumber then
    -- Tell the user
    print("You guessed it yay!")
  else -- If not
    -- Tell the user it was not
    print("That was not the number!")
  end

  -- OR

  --[[
  print(input == ranNumber and "You guessed it yay!" or "That was not the number!")
  ]]
end
```
