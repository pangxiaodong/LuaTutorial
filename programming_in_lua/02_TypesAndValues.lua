--数据类型

--[[
print(type("Hello world"))  --> string
print(type(10.4*3))         --> number
print(type(print))          --> function
print(type(type))           --> function
print(type(true))           --> boolean
print(type(nil))            --> nil
print(type(type(X)))        --> string
print({})                   --> table: 0000000001019b10
--]]


-- bool and nil 
-- 只有false和nil在条件判断中式false，数值0是true。

--[[
if 0 then 
    print "0 is true"
end
--]]


-- number：双精度浮点数
-- 1. double计算不会有rouding error。 【PS：我还是有点不太信。】
-- 2. 对于现代CPU，双精度浮点数计算速度与整数计算一样快。

--[[
print(4)         --> 4
print(0.4)       --> 0.4
print(4.57e-3)   --> 0.00457
print(0.3e12)    --> 300000000000.0
print(5e+20)     --> 5e+020
--]]


--string
--[[
--1. 字符串是不可变的。修改一个字符串，是创建了一个新的字符串。
a = "one string"
b = string.gsub(a, "one", "another") -- 创建了一个新的字符串
print(a)
print(b)
-- 2. 单引号与双引号都是可以用的
a = "a line"
b = 'another line'
-- 3. \n换行，双引号内显示双引号只能用\进行转义，双引号内可以直接用单引号不用转义
print("one line\nnext line\n\"in quotes\", 'in quotes'") 
-- 4. 不同类型相加，容易出错
print("10" + 1 + 1)       --> 12，很容易迷惑
print("10 + 1")           --> 10 + 1
print("-5.3e-10"*"2")     --> -1.06e-09
-- print("hello" + 1)     -- ERROR (cannot convert "hello")
-- 5. tonumber
line = io.read()     -- read a line
n = tonumber(line)   -- try to convert it to a number
if n == nil then
  error(line .. " is not a valid number")
else
  print(n*2)
end
-- 6. tostring
print(tostring(10) == "10")   --> true
print(10 .. "" == "10")       --> true
--]]


--tables
--[[
--1. 当没有对table的引用的时候，lua会回收这个table，复用它的内存
a = {}
a["x"] = 10
b = a      -- `b' refers to the same table as `a'
print(b["x"])  --> 10
b["x"] = 20
print(a["x"])  --> 20
a = nil    -- now only `b' still refers to the table
b = nil    -- now there are no references left to the table
-- 2. 容易出错，a.x 与 a[x]，前者表示key是"x",后者表示key是x对应的内容
a = {}
x = "y"
a[x] = 10                 -- put 10 in field "y"
print(a[x])   --> 10      -- value of field "y"
print(a.x)    --> nil     -- value of field "x" (undefined)
print(a["x"]) --> nil     -- value of field "x" (undefined)
print(a.y)    --> 10      -- value of field "y"    
--]]

-- functions
--[[
Functions are first-class values in Lua. That means that functions can be stored in variables, passed as arguments to other functions, and returned as results. 
Finally, first-class functions play a key role in Lua's object-oriented facilities, as we will see in Chapter 16.  
--]]

-- Userdata and Threads
--[[
The userdata type allows arbitrary C data to be stored in Lua variables. It has no predefined operations in Lua, except assignment and equality test. 
Userdata are used to represent new types created by an application program or a library written in C; for instance, the standard I/O library uses them to represent files.
We will discuss more about userdata later, when we get to the C API.
We will explain the thread type in Chapter 9, where we discuss coroutines. 
--]]