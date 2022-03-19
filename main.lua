require("CustomFeat"):Initialize()

match("'This will not be matched!'") {
  {"ToMatch", function() 
     print"YAY"  
  end},

  {"Test", function(input) 
     print("The input is " .. input)  
  end},

  {no_match, function(input) 
     print("Unable to match " .. input)  
  end}
}