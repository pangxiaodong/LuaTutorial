-- 赋值
--[[
-- 1. 交换元素
x, y = y, x                -- swap `x' for `y'
a[i], a[j] = a[j], a[i]    -- swap `a[i]' for `a[j]'
-- 2. 容易错误：a, b, c = 0，后两个值是nil
a, b, c = 0, 1
print(a,b,c)           --> 0   1   nil
a, b = a+1, b+1, b+2   -- value of b+2 is ignored
print(a,b)             --> 1   2
a, b, c = 0
print(a,b,c)           --> 0   nil   nil    
--]]


-- Local Variables and Blocks
--[[
-- 1. local说明
local a, b = 1, 10
if a<b then
  print(a)   --> 1
  local a    -- `= nil' is implicit
  print(a)   --> nil
end          -- ends the block started at `then'
print(a,b)   -->  1   10
-- 2. 常用方式，这样相当于一份深拷贝，而且访问local的速度更快。
local foo = foo
-- 3. 增加作用域的方式 do-end，类似C#中的{}
do
    local x = 10
    y = 10
end          -- scope of `a2' and `d' ends here
print(x, y) --> nil  10
--]]

-- if
--[[
if a<0 then a = 0 end
    
if a<b then return a else return b end
    
if line > MAXLINES then
    showpage()
    line = 0
end

if op == "+" then
    r = a + b
elseif op == "-" then
    r = a - b
elseif op == "*" then
    r = a*b
elseif op == "/" then
    r = a/b
else
    error("invalid operation")
end    
--]]

-- while遍历数组
--[[
a = {"a", "b", "c"}
local i = 1
while a[i] do
  print(a[i])
  i = i + 1
end
--]]

-- print the first non-empty line
--[[
repeat
    line = io.read()
until line ~= ""
print(line)
--]]

-- for遍历数组
-- 1. for格式：exp3可以省略，默认值为1。另外三个exp都只是计算一次，即使是函数也不会反复调用。
--[[
for var=exp1,exp2,exp3 do
   something
end
for i=1,f(x) do print(i) end --f(x)只会调用一次
--]]
-- 2. 出了for，for的i就无效了
--[[
for i=1,10 do print(i) end
print(i) --> nil
--]]

-- for遍历key-value
--[[
print all values of array `a'
for i,v in ipairs(a) do print(v) end
print all keys of table `t'
for k in pairs(t) do print(k) end
--]]
--[[
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
revDays = {["Sunday"] = 1, ["Monday"] = 2, ["Tuesday"] = 3, ["Wednesday"] = 4, ["Thursday"] = 5, ["Friday"] = 6, ["Saturday"] = 7}
-- 这样与上面的定义等价
revDays = {}
for i,v in ipairs(days) do
  revDays[v] = i
end
--]]


-- break and return
-- For syntactic reasons, a break or return can appear only as the last statement of a block 
-- (in other words, as the last statement in your chunk or just before an end, an else, or an until). 
-- For instance, in the next example, break is the last statement of the then block.
--[[
a = { 3 , 4, 5 , 1 , 7}
v = 1
local i = 1
while a[i] do
    if a[i] == v then break end
    i = i + 1
end
print(i) --> 4
--]]

-- 如果要提前return那么用do语法
--[[
function foo ()
    return          --<< SYNTAX ERROR
    -- `return' is the last statement in the next block
    do return end   -- OK
    ...             -- statements not reached
end    
--]]
