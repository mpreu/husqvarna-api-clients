--[[
  Automower® Connect API

  This API allows you to control and obtain information about Automower®.

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

-- position class
local position = {}
local position_mt = {
	__name = "position";
	__index = position;
}

local function cast_position(t)
	return setmetatable(t, position_mt)
end

local function new_position(latitude, longitude)
	return cast_position({
		["latitude"] = latitude;
		["longitude"] = longitude;
	})
end

return {
	cast = cast_position;
	new = new_position;
}
