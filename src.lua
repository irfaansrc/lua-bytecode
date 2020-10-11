local bytecode = {
    encode = function(str)
        return str:gsub(
            ".",
            function(a)
                return "\\" .. a:byte()
            end
        ) or str .. '"'
    end,
    decode = function(bytecode)
        local bytes = ""
        for i = 1, string.len(bytecode) do
            bytes = bytes .. string.char(string.byte(bytecode, i))
        end
        return bytes
    end
}

print(bytecode.encode("sup?"))
