local json = require("json")
local http = require("socket.http")
local url = require("socket.url")
http.TIMEOUT = 0.5

local input = "hello"
local sl = "en"
local tl = "fr"
local function make_url(input, sl, tl)
   return 'http://translate.googleapis.com/translate_a/single?client=gtx&sl='.. sl ..'&tl='.. tl ..'&dt=t&q='.. url.escape(input)
end
local reply = http.request(make_url(input,sl,tl))
local data = json.decode(reply)

for i, v in ipairs(data) do
    output = v[1][1]
end
print(sl, input)
print(tl, output)
