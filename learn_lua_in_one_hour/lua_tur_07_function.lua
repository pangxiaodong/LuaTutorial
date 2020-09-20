--[[
-- 简单的加法函数
function getSum(num1, num2)
    return num1 + num2
end
print(string.format("5 + 2 = %d", getSum(5,2)))
]]


--[[
--用正则切分字符串，不过这里会切出来nil，在前面通过判空还处理不掉
function splitStr(theString)
    stringTable = {}
    local i = 1
    for word in string.gmatch(theString, "[^%s]+") do
        if(word ~= nil) then -- nil没去掉??
            stringTable[i] = word
            i = i + 1
        end
    end
    return stringTable, i
end

splitStrTable, numOfStr = splitStr("The Turtle")
for j = 1, numOfStr do
    print(string.format("%d : %s", j, splitStrTable[j]))
end
]]


--[[
-- 任意个数函数参数,看上去是table
function getSumMore(...)
    local sum = 0
    for k, v in pairs{...} do
        sum = sum + v
    end
    return sum
end
io.write("Sum ", getSumMore(1,2,3,4,5,6))    
]]


--[[
-- 函数指针的感觉
doubleIt = function(x) return x * 2 end
print(doubleIt(4))

-- 这段还是听迷惑的，尽量不要用这种嵌套function吧。
-- 内部函数会记住，内部函数的变量
function outerFunc()
    local i = 0
    print("i of outerFunc : " .. i)

    return function()
        print("i of innerFunc : " .. i)
        i = i + 1
        return i
    end
end
getI = outerFunc()
print(getI()) -- 1
print(getI()) -- 2
]]