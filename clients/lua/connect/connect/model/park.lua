--[[
  Automower® Connect API

  This API allows you to control and obtain information about Automower®.

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

-- park class
local park = {}
local park_mt = {
	__name = "park";
	__index = park;
}

local function cast_park(t)
	return setmetatable(t, park_mt)
end

local function new_park(type, attributes)
	return cast_park({
		["type"] = type;
		["attributes"] = attributes;
	})
end

return {
	cast = cast_park;
	new = new_park;
}