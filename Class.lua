local function realClass(name, data)
  data.__index = function(self, i)
    local get = rawget(data, i)
 
    if type(get) == "table" then
       if get[1] == true then
          return "This item in the class is private."
      else
        if get[1] == false then
          return get[2]
        end
      end
    end

    return get
  end

  data.__newindex = function(self, i, v)
    local get = rawget(data, i)
 
    if type(get) == "table" then
       if get[1] == true then
          print("Cannot set '" .. i .. "' because you're trying to set it outside of the class.")
        return get
      else
        if get[1] == false then
          return v
        end
      end
    end

    return v
  end

  local tmp = {}
  setmetatable(tmp, data)
  
  getfenv()[name] = tmp

  return getfenv()[name]
end

local module = {
  private = function(item) 
     return {true, item}
  end,
  public = function(item)
     return {false, item}
  end,
  class = function(name)
     return function(data)
        realClass(name, data)
    end
  end
}

return module