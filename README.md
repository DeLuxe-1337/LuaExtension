This is just custom lua functions for future lua projects!

Features:
Match (like switch)

To test it you can view my replit!

https://replit.com/@DeLuxeIsHandsome/LuaFeatures


Example

match("'This will not be matched!'") {
  {"ToMatch", function() 
     print"YAY"  
  end},

  {"Test", function(input) 
     print("The input is " .. input)  
  end},

  {"default", function(input) 
     print("Unable to match " .. input)  
  end}
}