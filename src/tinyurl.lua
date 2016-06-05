local module = {}

function module.shorten(url)
    if not http then
        return error("HTTP is not enabled!")
    end
    
<<<<<<< HEAD
    if not http.checkURL(expect(url, "string", 1)) then
        return error("Invalid URL \"" .. url .. "\"!")
    end
    
    local encoded = textutils.urlEncode(url)
=======
    local encoded = textutils.urlEncode(expect(url, "string", 1))
>>>>>>> d5b6c521237b1b7c904eac823d74968383941200
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
