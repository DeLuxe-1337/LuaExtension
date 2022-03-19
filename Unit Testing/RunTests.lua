local tests = {
  require("Unit Testing/ClassTest"),
  require("Unit Testing/MatchTest")
}

local module = {}

function module:Run()
   for i,v in pairs(tests) do
    print("Testing: " .. i)
     v:Test()
  end
end

return module
