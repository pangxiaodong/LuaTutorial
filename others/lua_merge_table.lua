local function print_table(tab)
    for k,v in pairs(tab) do print(k ..  ":" .. v) end
end
local function transfer_table(src, dst)
    for k,v in pairs(src) do dst[k] = v end
end
local function merge_table(t1, t2)
    local dst = {}
    transfer_table(t1, dst)
    transfer_table(t2, dst)
    return dst;
end

local t1 = {}
t1.moveSpeed = 10
t1.hp = 50


local t2 = {}
t2.name = "kitty"

local t3 = merge_table(t1, t2)
print_table(t3);

