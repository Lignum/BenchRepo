local url = ...

if not url then
  return printError("Usage: " .. fs.getName(shell.getRunningProgram()) .. " <url>")
end

local tinyurl = require("lignum/tinyurl")
local shortened = tinyurl.shorten(url)
print(shortened)
