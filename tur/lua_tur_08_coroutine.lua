co = coroutine.create(function()
    for i = 1, 10, 1 do
        print(i)
        print(coroutine.status(co))
        if i == 5  then coroutine.yield() end
    end
end)

print(coroutine.status(co)) -- suspended
coroutine.resume(co) -- running 12345
print(coroutine.status(co)) -- suspended

co2 = coroutine.create(function()
    for i = 101, 110, 1 do
        print(i)
    end
end)
coroutine.resume(co2)
coroutine.resume(co) -- running 678910
print(coroutine.status(co)) -- dead