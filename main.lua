require("CustomFeat"):Initialize() --Initialize all globals
require("Unit Testing/RunTests"):Run() --Run all tests

class("Test") {
    test = private "test",
    func = public (function(hi)
            print(hi)

            this.test = "hola"
            print(this.test)
        end),
    new = function(arg) 
  
    end
}

print(Test.test)
Test.func("This is a test")

print(Test.test)
