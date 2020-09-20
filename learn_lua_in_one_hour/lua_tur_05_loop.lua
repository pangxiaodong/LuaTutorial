--[[
--repeat的用法
repeat
    io.write("Enter you guess : ")
    guess = io.read()
until tonumber(guess) == 15
]]

--[[
-- for的用法
for i = 1, 10, 1 do
    io.write(i)
end
io.write("\n")
]]

--[[
--for遍历table
months = {"January", "February", "March", "April", "May", "June", "July", "August", "September",
"October", "November", "December",} 
for k, value in pairs(months) do
    io.write(value, " ")
end
]]