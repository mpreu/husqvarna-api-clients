--[[
  Automower® Connect API

  This API allows you to control and obtain information about Automower®.

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

-- start_all_of class
local start_all_of = {}
local start_all_of_mt = {
	__name = "start_all_of";
	__index = start_all_of;
}

local function cast_start_all_of(t)
	return setmetatable(t, start_all_of_mt)
end

local function new_start_all_of(attributes)
	return cast_start_all_of({
		["attributes"] = attributes;
	})
end

return {
	cast = cast_start_all_of;
	new = new_start_all_of;
}
