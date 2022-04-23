local json = require("json")
local http = require("socket.http")
local url = require("socket.url")
local string = "apple"
local reply, code = http.request('http://suggestqueries.google.com/complete/search?output=firefox&q=' .. string)
print(reply)
local data = json.decode(reply)
print(data[2])
output_list = data[2]
output_length = #output_list
for i = 1, output_length do
  print(output_list[i])
end