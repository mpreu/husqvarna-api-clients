--[[
  Authentication API

  Husqvarna Group Authentication API

  The version of the OpenAPI document: 1.0.0
  
  Generated by: https://openapi-generator.tech
]]

--package authentication

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import

local token_api = {}
local token_api_mt = {
	__name = "token_api";
	__index = token_api;
}

local function new_token_api(authority, basePath, schemes)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	local host, port = http_util.split_authority(authority, default_scheme)
	return setmetatable({
		host = host;
		port = port;
		basePath = basePath or "https://api.authentication.husqvarnagroup.dev/v1";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, token_api_mt)
end

function token_api:token_access_token_delete(x_api_key, access_token)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/token/%s",
			self.basePath, access_token);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if x_api_key then
		req.headers:upsert("x-api-key", x_api_key)
	end
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("APIKeyHeader", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_token_api;
}