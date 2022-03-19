local default = { --Unique.
  "Unable",
  "To",
  "Match",
  69
}

local function realMatch(mat, params)
  local matched = false
  for i,v in pairs(params) do
    if v[1] == mat then
      matched = true
      v[2](mat)
    end
  end

  if matched == false then
      if type(params[#params][1]) == "table" and params[#params][1] == default then
        params[#params][2](mat)
      end
  end

  return matched
end

local module = {
  ["no_match"] = default,
  match = function(toMatch) 
    return function(data) 
       return realMatch(toMatch, data)
    end
  end,
  case = function(test, params) 
     return {test, params}
  end
}

return module