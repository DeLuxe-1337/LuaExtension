local tests = {
  require("Unit Testing/ClassTest"),
  require("Unit Testing/MatchTest")
}

local module = {}

function module:Run()
   for i,v in pairs(tests) do
    print("Test: " .. i)
     v:Test()
  end

  print("Test completed.")
end

return module
