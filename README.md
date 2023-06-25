# Timestamp Difference
A simple system to get the difference between two timestamps (current and declared) and convert them into years, months, days, hours, minutes and seconds.

### How to use
```lua
   -- // Args: Timestamp - getTimeDifference  (timestamp)
   getTimeDifference  (1687649287) -- Difference between two timestamps
   -- Return: Converted Difference Time, The difference in milliseconds
```

### Example
```lua
addCommandHandler ('mdelay', function ()
    if (not time) then time = os.time () end
    iprint ('O comando foi executado a ultima vez em '..getTimeDifference (time)..' atras.')
    time = os.time ()
end)
   -- // Return: https://cdn.discordapp.com/attachments/1024453207327510630/1122561191634534430/image.png
```
