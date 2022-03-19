local module = {}

function module:Test()
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
end

return module
