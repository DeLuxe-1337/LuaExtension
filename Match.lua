math.randomseed(os.time()) --Fresh seed everytime.

local no_match = { --Unique table structure so it cannot be easily recreated by accident when comparing tables..
  "Unable to find a match.",
  math.random(0, 150),
  math.random(0, 20000),
  math.random(0, 50),
  math.random(0, 4000),
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
  ["no_match"] = no_match,
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