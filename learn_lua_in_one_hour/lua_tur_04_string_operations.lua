quote = "I changed my password to incorrect. So that when I forget it, it always reminds me, Your password is incorrect."

-- 字符串长度，#更简洁
io.write("Quote Length ", string.len(quote), "\n")
io.write("Quote Length ", #quote, "\n")

-- 字符串替换
io.write("Replace I with me : ", string.gsub(quote, "I", "me"), "\n")
io.write("Index of password : ", string.find(quote, "password"), "\n")