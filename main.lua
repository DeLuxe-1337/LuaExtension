require("CustomFeat"):Initialize() --Initialize all globals

match("'This will not be matched!'") {
  case("Test", function() print"test" end), --Looks better

  --Alternatively you can just manually make the table.

  {no_match, function(input) 
     print("Unable to match " .. input)  
  end}
}