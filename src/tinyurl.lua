local module = {}

function module.shorten(url)
    if not http then
        return error("HTTP is not enabled!")
    end
    
    local encoded = textutils.urlEncode(expect(url, "string", 1))
    local resp = http.get("http://tinyurl.com/api-create.php?url=" .. encoded)
    
    if resp then
        local shortened = resp.readAll()
        resp.close()
        return shortened
    else
        return error("Could not reach http://tinyurl.com")
    end
end

return module
