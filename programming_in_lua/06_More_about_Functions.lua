-- 排序
-- 1.table的定义，实际上是table嵌套了table
-- 2.sort里用到了匿名函数
--[[  
network = {
    {name = "grauna",  IP = "210.26.30.34"},
    {name = "arraial", IP = "210.26.30.23"},
    {name = "lua",     IP = "210.26.23.12"},
    {name = "derain",  IP = "210.26.23.20"},
}

-- 降序排序
table.sort(network, function (a,b)
    return (a.name > b.name)
end)

for i=1, #network, 1 do
    print(network[i].name)
end
print()

-- 升序排序
table.sort(network, function (a,b)
    return (a.name < b.name)
end)

for i=1, #network, 1 do
    print(network[i].name)
end
--]]

-- 另一个排序：根据份数排序名字
--[[
names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
print(names[1], names[2], names[3])
    
table.sort(names, function (n1, n2)
    return grades[n1] > grades[n2]    -- compare the grades
end)
print(names[1], names[2], names[3])
--]]

-- upperValue与闭包
-- function是一级类型，这里的i被匿名函数使用了，变成了upperValue，既不是global变量也不是local变量
--[[
function newCounter ()
    local i = 0 -- upperValue，
    return function ()   -- anonymous function
            i = i + 1
            return i
           end
    end
  
c1 = newCounter()
print(c1())  --> 1
print(c1())  --> 2
print(c1())  --> 3
c2 = newCounter()
print(c2())  --> 1
print(c2())  --> 2
--]]

-- upperValue的一个应用
-- digit也是一个upperValue，当action回调的时候，digit的值还是可以访问的
--[[
function digitButton (digit)
    return Button{ label = digit,
                   action = function ()
                              add_to_display(digit)
                            end
                 }
end    
--]]