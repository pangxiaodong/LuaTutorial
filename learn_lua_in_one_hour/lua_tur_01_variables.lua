--https://www.youtube.com/watch?v=iMacxZQMPXs&t=371s

--[[
-- 字符串长度
name = "Derek"
io.write("Size of string ", #name, "\n")

-- 把字符串改成整数
name = 4
io.write("My name is ", name, "\n")
]]


--[[
-- lua的浮点数的最大值，数据类型是number
bigNum = 9223372036854775807
io.write("Big Number : ", bigNum, "\n")
bigNum = bigNum + 1
io.write("Big Number : ", bigNum, "\n")
io.write("Big Number Type : ", type(bigNum), "\n")
]]


--[[
-- lua的浮点数的精度
floatPrecision = 1.999999999999 + 0.0000000000005
io.write("Float Precision : ", floatPrecision, "\n")
floatPrecision = 1.999999999999 + 0.00000000000055
io.write("Float Precision : ", floatPrecision, "\n")
]]


-- longString，注释起来很麻烦，不能用块注释
--longString = [[
--  I am a very very long
--  string that goes on 
--  forever ]]
--[[
name = "Derek"
longString = longString .. name;
io.write(longString, "\n")
]]


-- 没定义的变量，类型是nil
--[[
isAbleToDrive = true
io.write(type(isAbleToDrive), "\n") -- boolean
io.write(type(madeUpVar), "\n")
--]]

