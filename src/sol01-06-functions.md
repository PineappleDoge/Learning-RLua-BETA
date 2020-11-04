# Functions challenge solution

Solution for [functions challenge](./ch01-06-functions.md#challenge).

```lua
local function calc(x, y)
  -- Solution 1
  return x + y > 10 and x * y or 0

  -- Solution 2
  --[[
  if x + y > 10 then
    return x * y
  else
    return 0
  end
  ]]
end

-- Don't worry about me

assert(calc(5, 5) == 0, '5 + 5 < 10, should return 0')
assert(calc(5, 6) == 30, '5 * 6 = 6')
assert(calc(0, 25) == 0, '0 * 25 = 0')
```
