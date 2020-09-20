-- r: Read only (default)
-- w: Override or create a new file
-- a: Append or create a new file
-- r+: Read & write existing file
-- w+: Overwrite read or create a file
-- a+: Append read or create file


--[[
-- 写文件
file = io.open("text.lua", "w+")
file:write("Random String of text\n")
file:write("Some more text\n")
-- 读文件
file:seek("set", 0)
print(file:read("*a"))
file:close()
]]


--[[
-- Append内容
file = io.open("text.lua", "a+")
file:write("Even more text\n")
-- 读文件
file:seek("set", 0)
print(file:read("*a"))
file:close()
]]