--[[
  Automower® Connect API

  This API allows you to control and obtain information about Automower®.

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

-- _mowers__id__settings_post_request_data_attributes class
local _mowers__id__settings_post_request_data_attributes = {}
local _mowers__id__settings_post_request_data_attributes_mt = {
	__name = "_mowers__id__settings_post_request_data_attributes";
	__index = _mowers__id__settings_post_request_data_attributes;
}

local function cast__mowers__id__settings_post_request_data_attributes(t)
	return setmetatable(t, _mowers__id__settings_post_request_data_attributes_mt)
end

local function new__mowers__id__settings_post_request_data_attributes(cutting_height, headlight)
	return cast__mowers__id__settings_post_request_data_attributes({
		["cuttingHeight"] = cutting_height;
		["headlight"] = headlight;
	})
end

return {
	cast = cast__mowers__id__settings_post_request_data_attributes;
	new = new__mowers__id__settings_post_request_data_attributes;
}
