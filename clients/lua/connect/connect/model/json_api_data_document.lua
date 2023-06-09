--[[
  Automower® Connect API

  This API allows you to control and obtain information about Automower®.

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

-- json_api_data_document class
local json_api_data_document = {}
local json_api_data_document_mt = {
	__name = "json_api_data_document";
	__index = json_api_data_document;
}

local function cast_json_api_data_document(t)
	return setmetatable(t, json_api_data_document_mt)
end

local function new_json_api_data_document(data)
	return cast_json_api_data_document({
		["data"] = data;
	})
end

return {
	cast = cast_json_api_data_document;
	new = new_json_api_data_document;
}
