-- 关系运算符 : > < >= <= == ~=
-- 逻辑运算符 : and or not

--[[
-- 注意localVar的只在if表达式内有效
age = 13
if age < 16 then
    io.write("You can go to school", "\n")
    local localVar = 10
elseif (age <= 16) and (age < 18) then
    io.write("You can drive", "\n")
else 
    io.write("You can vote", "\n")
end
print(localVar)

if (age < 14) or (age > 67) then io.write("You shouldn't work", "\n") end
]]


--[[
-- 把boolean转成string
print(string.format("not true = %s", tostring(not true)))

age = 13
-- canVote = age > 18 ? true : false -- 不支持
canVote = age > 18 and true or false -- 支持这样
io.write("can i vote : ", tostring(canVote))
]]

-- 不支持switch，用if，elseif来代替把。


--[[
-- while，没有continue
i = 1
while (i <= 10) do
    io.write(i)
    i = i + 1

    if i == 8 then break end
end
]]