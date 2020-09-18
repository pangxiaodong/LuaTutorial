--[[
-- 注意取余没有小数部分
io.write("5 + 3 = ", 5+3, "\n")
io.write("5 - 3 = ", 5-3, "\n")
io.write("5 * 3 = ", 5*3, "\n")
io.write("5 / 3 = ", 5/3, "\n") -- 1.6666666666667
io.write("5.2 % 3 = ", 5%3, "\n") -- 2
]]


--[[
    这些都不支持
    number++, number--, ++number, --number, number+=1
]]


--[[
常用数学函数
1. floor, ceil, max, min, 
2. sin, cos, tan, asin, acos,
3. exp, log, log10, pow, sqrt
4. random, randomseed
]] 
--[[
io.write("floor(2.345) : ", math.floor(2.345), "\n")
io.write("ceil(2.345) : ", math.ceil(2.345), "\n")
io.write("max(2, 3) : ", math.max(2, 3) , "\n")
io.write("min(2, 3) : ", math.min(2, 3), "\n")
io.write("pow(8, 2) : ", math.pow(8, 2), "\n")
io.write("sqrt(64) : ", math.sqrt(64), "\n")
]]

--[[
-- 随机数
io.write("math.random() : ", math.random(), "\n")
io.write("math.random(10) : ", math.random(10), "\n")
io.write("math.random(5,100) : ", math.random(5,100), "\n")
math.randomseed(os.time())
print(string.format("Pi = %.10f", math.pi)) -- Pi = 3.1415926536
]]