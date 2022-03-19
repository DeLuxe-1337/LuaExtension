local module = {}

function module:Test()
    match("Woah") {
        case("Woah", function()
            print "Matched woah"
        end),
        case(no_match, function(input)
            print("Unable to match " .. input)
        end)
    }
end

return module
