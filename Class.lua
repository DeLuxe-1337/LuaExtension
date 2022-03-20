--Todo
--Add constructor
--add inheritance

local function realClass(name, data)
  local tmp = {}
  local thisTmp = {} --For this

  thisTmp.__index = function(self, i) --this.item
    return rawget(data, i)
  end

  thisTmp.__newindex = function(self, i, v) --this.item = new
    return rawset(data, i, v)
  end

  setmetatable(thisTmp, tmp)
  
  data.__index = function(self, i)    
    getfenv()["this"] = thisTmp

    local get = rawget(data, i)
 
    if type(get) == "table" then
       if get[1] == true then
          return "Can't retrieve 'private' value outside of class."
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
        rawset(data, i, get)
        return get
      else
        if get[1] == false then
          rawset(data, i, v)
          return v
        end
      end
    end

    rawset(data, i, v)
    return v
  end

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