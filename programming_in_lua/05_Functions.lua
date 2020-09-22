-- 5.1 多返回值
--[[
-- find方法 
s, e = string.find("hello Lua users", "Lua")    
print(s, e)   -->  7      9
-- 最大值与索引
function maximum (a)
    local mi = 1          -- maximum index
    local m = a[mi]       -- maximum value
    for i,val in ipairs(a) do
      if val > m then
        mi = i
        m = val
      end
    end
    return m, mi
end  
print(maximum({8,10,23,12,5}))     --> 23   3
-- 接多个返回值
function foo0 () end                  -- returns no results
function foo1 () return 'a' end       -- returns 1 result
function foo2 () return 'a','b' end   -- returns 2 results
x,y = foo2()                          -- x='a', y='b'
x = foo2()                            -- x='a', 'b' is discarded
x,y,z = 10,foo2()                     -- x=10, y='a', z='b'
-- 多个返回值有时候只用1个
print(foo2())                         --> a b   直接打印：2个返回值
print((foo2()))                       --> a     用括号：1个返回值
print("" .. foo2())                   --> a 在表达式里面：1个返回值
-- unpack的用法，其实没太理解有啥用 
print(unpack{10,20,30})               --> 10   20   30
a,b = unpack{10,20,30}                -- a=10, b=20, 30 is discarded    
--]]


-- 变长参数

--[[
-- 1. 不用的参数用下划线来接收: for _, v in pairs(args) do
-- 2. 变长参数的使用方法: local args = { ... }
printResult = ""
function my_print (...)
  local args = { ... }
  for _, v in pairs(args) do
    printResult = printResult .. tostring(v) .. "\t"
  end
end
my_print(1,2,3,4)
print(printResult)
print(1,2,3,4)

-- 选择指定的返回值
print(string.find("hello hello", " hel"))            --> 6  9
print(select(1, string.find("hello hello", " hel"))) --> 6
print(select(2, string.find("hello hello", " hel"))) --> 9

-- 固定参数与可变参数可以共存
function g (a, b, ...) 
  print("a of g : " .. a)
  print("b of g : " .. b)
  local args = { ... }
  for _, v in pairs(args) do
    io.write(v .. " ")
  end
  print()
end    
g(1,2,3,4,5,6,7,8,9,10)
--]]


-- 指定命名传递参数，实际上就是传了一个table
function Window (options)
    -- 根据参数，各种逻辑，创建实际的窗口
    print(options.x, options.y, options.width, options.height, options.title, options.background, options.border);
end

w = Window{ x=0, y=0, width=300, height=200, title = "Lua", background="blue", border = true }

