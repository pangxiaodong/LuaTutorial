-- 利用闭包实现一个迭代器
--[[
function list_iter (t)
    local i = 0
    local n = #t
    return function ()
             i = i + 1
             if i <= n then return t[i] end
           end
  end

  t = {10, 20, 30}

  -- 使用迭代器
  for element in list_iter(t) do
    print(element)
  end

  -- 正常遍历
  for _,v in pairs(t) do
    print(v)
  end
--]]

-- ipairs: 一种顺序的迭代器
-- pairs:  迭代 table，可以遍历表中所有的 key 可以返回 nil,  遍历顺序随机
-- ipairs: 迭代数组，不能返回 nil,如果遇到 nil 则退出

--[[
a = {"one", "two", "three"}
for i, v in ipairs(a) do -- 顺序访问，ipairs合适数组
    print(i, v)
end    

local tab= { 
    [1] = "a",
    [3] = "b", 
    [4] = "c" 
} 
for _,v in pairs(tab) do     -- 输出 "c", "a" ,"b", 遍历顺序随机
    io.write( v ) 
end 
    
print();
for _,v in ipairs(tab) do    -- 输出 "a", k=2时断开
    io.write( v ) 
end
--]]