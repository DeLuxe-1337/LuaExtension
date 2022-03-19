This is just custom lua functions for future lua projects!

Features:
Match (like switch)

To test it you can view my replit!

https://replit.com/@DeLuxeIsHandsome/LuaExtension


Example

```lua
--Read main.lua for latest information!

require("CustomFeat"):Initialize()

match("Woah") {
  case("Woah", function() 
      print"Matched woah"
  end),
  
  case(no_match, function(input) 
     print("Unable to match " .. input)  
  end)
}

--Output: Matched woah
```
