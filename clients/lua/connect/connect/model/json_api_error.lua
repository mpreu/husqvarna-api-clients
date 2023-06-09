--[[
  Automower® Connect API

  This API allows you to control and obtain information about Automower®.

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

-- json_api_error class
local json_api_error = {}
local json_api_error_mt = {
	__name = "json_api_error";
	__index = json_api_error;
}

local function cast_json_api_error(t)
	return setmetatable(t, json_api_error_mt)
end

local function new_json_api_error(id, status, code, title, detail)
	return cast_json_api_error({
		["id"] = id;
		["status"] = status;
		["code"] = code;
		["title"] = title;
		["detail"] = detail;
	})
end

return {
	cast = cast_json_api_error;
	new = new_json_api_error;
}
