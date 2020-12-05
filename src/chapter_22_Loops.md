# Loops

In programming, it's very often that we'll want to repeat code. Whether it's repeating the same code to a lot of objects, or just repeating code until something happens, we'll want to familiarize ourselfs with the concepts of `loops`.

In RLua, there are 3 types of loops, `while`, `for`, and `repeat` loops. Each of these loops has varying uses, but they all allow you to repeat sections of code. There's techinally a 4th loop called `recursion`, but we discussed that in [functions](./chapter_21_Functions.md), and this chapter will only lightly go over recusion.





## While Loops

You might've remembered us briefly discussing and using while loops before, but now it's time that we give them their fair chance! While loops, as the same suggests, are code segments which repeat code until the condition is false. 

```lua
while true do
    print('Running')
end
```

