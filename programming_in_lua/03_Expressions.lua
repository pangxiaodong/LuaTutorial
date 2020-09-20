-- 算术运算符
-- the binary `+´ (addition), `-´ (subtraction), `*´ (multiplication), `/´ (division), and the unary `-´ (negation)


-- 关系运算符
--  <   >   <=  >=  ==  ~=
-- Remember that "0"==0 is false. Moreover, 2<15 is obviously true, but "2"<"15" is false (alphabetical order!)


-- 逻辑运算符
-- and, or, not
--[[
-- 1. and：如果第一个值是false的，那么就直接返回第一个值，否则返回第二个值。
--    or:  如果第一个值是true的，那么返回第二个值，否则返回第一个值。
print(4 and 5)         --> 5
print(nil and 13)      --> nil
print(false and 13)    --> false
print(4 or 5)          --> 4
print(false or 5)      --> 5
-- 2. A useful Lua idiom is x = x or v, which is equivalent to
--    if not x then x = v end
x = x or 1 -- x的默认值为1
print("x = " .. x) --> x= 1
-- 3. (a and b) or c , which is equivalent to the C expression a ? b : c
max = (3 > 1) and 3 or 1
print("max = " .. max) --> max = 3
-- 4. 注意not 0
print(not nil)      --> true
print(not false)    --> true
print(not 0)        --> false
print(not not nil)  --> false    
--]]


-- 字符串连接
--[[
print("Hello " .. "World")  --> Hello World
print(0 .. 1)               --> 01，结果是字符粗
print(type("0" +  "1" + "1") .. " " .. ("0" +  "1" + "1"))   --> number 2
print(type("0" +  1  +  1) .. " " .. ("0" +  1  +  1))     --> number 2
--]]


-- 算符优先级
--[[
             not  - (unary)
             *   /
             +   -
             ..
             <   >   <=  >=  ~=  ==
             and
             or
--]]


-- Table的构造
--[[
-- 1. 数组样式定义，索引从1开始
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[4])  --> Wednesday
-- 2. 指定键值对，下面都是等价的，点语法更简洁，数组类型用不了点语法
a = {x=0, y=0};             print(a.x .. " " .. a["x"]); --> 0 0 内部定义
a = {["x"]=0, ["y"]=0}      print(a.x .. " " .. a["x"]); --> 0 0 内部定义
a = {}; a.x=0; a.y=0;       print(a.x .. " " .. a["x"]); --> 0 0 外部定义
a = {}; a["x"]=0; a["y"]=0; print(a.x .. " " .. a["x"]); --> 0 0 外部定义
-- 3. 数组样式定义，等价的
b = {"red", "green", "blue"}
b = {[1]="red", [2]="green", [3]="blue"}
-- 4. 数组样式与键值样式可以混合使用
c = {x=10, y=45; "one", "two", "three"}
print(c.x)  --> 10
print(c[1]) --> one    
--]]
