local module = {}

local function generalTest()
    match("Woah") {
        case("Woah", function()
            print "Matched woah"
        end),
        case(no_match, function(input)
            print("Unable to match " .. input)
        end)
    }
end

local function realisticTest()
  local item = {Item1 = "Sword", Active = false}
  
   match(item.Item1) {
    case("Hammer", function() 
       print("Item1 is a hammer")  
    end),
    case("Sword", function() 
       print("Item1 is a sword")  
    end)
   }
end

function module:Test()
    generalTest()

    realisticTest()
end

return module
