--[[
-- 修改metatable的内容，来定义操作

-- 先定义一个Table
aTable = {}

for x = 1, 10 do
    aTable[x] = x
end

-- 修改metatable
mt = {
    __add = function(table1, table2)
        sumTable = {}
    
        for y = 1, #table1 do
            if(table1[y] ~= nil) and (table2[y] ~= nil) then
                sumTable[y] = table1[y] + table2[y]
            else 
                sumTable[y] = 0
            end
        end
    
        return sumTable
    end,

    __eq = function(table1, table2)
        return table.value == table2.value 
    end,

    __lt = function(table1, table2)
        return table.value < table2.value 
    end,

    __le = function(table1, table2)
        return table.value <= table2.value 
    end,

}
setmetatable(aTable, mt)

-- 测试比较
print(aTable == aTable)

-- 测试相加
addTable = {}
addTable = aTable + aTable
for z = 1, #addTable do
    print(addTable[z])
end

]]

--[[
-- 试着用Lua模拟面向对象

 -- 把Animal这个表当做模板
Animal = {height = 0, weight = 0, name = "No Name", sound = "No Sound"}
-- 定义new方法
function Animal:new(height, weight, name, sound)
    setmetatable({}, Animal)
    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
   
    return self
end

function Animal:toString()
    animalStr = string.format("%s weighs %.1f lbs, is %.1f tall and says %s", self.name, self.weight, self.height, self.sound)
    return animalStr;
end

spot = Animal:new(10, 15, "Spot", "Woof")
print(spot.weight)
print(spot:toString())

-- 模拟Cat类，多了一个数据favFood
Cat = Animal:new()
function Cat:new(height, weight, name, sound, favFood)
    setmetatable({}, Animal) -- 把Animal这个表当做模板了
    self.height = height -- 开始填值
    self.weight = weight
    self.name = name
    self.sound = sound
    self.favFood = favFood
   
    return self
end

function Cat:toString()
    animalStr = string.format("%s weighs %.1f lbs, is %.1f tall and says %s and favFood is %s",
        self.name, self.weight, self.height, self.sound, self.favFood)
    return animalStr;
end

fluffy = Cat:new(10, 15, "Fluffy", "Meow", "Tuna")
print(fluffy:toString())
]]