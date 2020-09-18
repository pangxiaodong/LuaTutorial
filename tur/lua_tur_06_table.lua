--[[
-- 定义一个简单table
aTable = {}
for i = 1, 10 do
    aTable[i] = i -- key，value
end

-- 打印一下
io.write("First : ", aTable[1], "\n") -- 1
io.write("Last : ", aTable[10], "\n") -- 10
io.write("Number of Items : ", #aTable, "\n") -- 10

-- 通过insert修改值，不过一般直接改就好了
table.insert(aTable, 1, 0)
io.write("First : ", aTable[1], "\n") -- 0

-- 分隔符，对于打印很方便，需要用print
print(table.concat(aTable, ", "))

-- Remove了
table.remove(aTable, 1)
print(table.concat(aTable, ", "))
]]


--[[
-- 二维数组
aMultiTable = {}
for i = 0, 9 do
    aMultiTable[i] = {}
    for j= 0 ,9 do
        aMultiTable[i][j] = tostring(i) .. tostring(j)
    end
end
-- 打印二维数组
for i = 0, 9 do
    for j = 0 , 9 do
        io.write(aMultiTable[i][j], " : ")
    end
    print()
end
]]