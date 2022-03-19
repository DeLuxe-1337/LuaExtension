This is just custom lua functions for future lua projects!

Features:
```
Match (like switch)
Classes
```

To test it you can view my replit!

https://replit.com/@DeLuxeIsHandsome/LuaExtension


Match example:

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
Class example:
```lua
require("CustomFeat"):Initialize()

class("Test") {
  test = private "test",
  func = public (function(hi) 
      print(hi) 
      
      this.test = "hola"
      print(this.test)
  end)
}


print(Test.test)
Test.func("This is a test")

print(Test.test)
--Output: Can't retrieve 'private' value outside of class.
--This is a test
--hola
--Can't retrieve 'private' value outside of class.
```
