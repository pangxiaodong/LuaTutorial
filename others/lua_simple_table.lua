tbl= {
    [1] = {
        target = "A",
        weapons = { "ak", "m4", "usp" },
    },
    [3] = {
        target = "B",
        weapons = { "glock", "awp"},
    },
}

for k, v in pairs(tbl) do
    local id = k;
    local data = v;
    msg = string.format("%s %s", id, data.target);
    for i=1, #(data.weapons) do
        msg = string.format("%s %s", msg, data.weapons[i])
    end
    print(msg);
end  
