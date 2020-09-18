-- https://www.youtube.com/watch?v=CYxMfVy5W00&t=25s

--[[
local john = {}
print(john.money) -- nil

local bill = { money = 999 }
print(bill.money) -- 999

local metatable = { __index = bill }
setmetatable(john, metatable)
print(john.money) -- 999
]]


--[[
-- 模拟面向对象：John的prototype作为对象的字段
John = {}
John.prototype = { speed = 5, strength = 100 } -- 默认table
John.metatable = { __index = John.prototype }  -- 把__index指向原表

function John:new()
    local o = {} -- 一共空的table
    setmetatable(o, John.metatable) -- 把table的__index指向John的prototype
    return o
end

local john = John:new()
print(john.speed) -- 5
]]

John = {}
John.prototype = { speed = 5, strength = 100 } -- 默认table
John.metatable = { __index = John.prototype }  -- 把__index指向原表

function John:new(o)
    setmetatable(o, John.metatable) -- 把table的__index指向John的prototype
    return o
end

local john = John:new({speed = 4}) -- 注意speed = 4不会被覆盖
print(john.speed) -- 4，不是5
print(john.strength) -- 100
