local module = {
  funcs = {}
}

function addModuleFunctions(mod)
   for i,v in pairs(mod) do
     module.funcs[i] = v
  end
end

addModuleFunctions(require("Match"))

function module:Initialize()
   for i,v in pairs(module.funcs) do
     getfenv()[i] = v
  end
end

return module