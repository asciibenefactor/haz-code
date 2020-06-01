-- Basic file In/Out test 
-- asciibene 
while isdone == false
print("Please input desired text") 
txt = io.read("*a") 
tic()
fn = "/mnt/sdcard/luatest" --filename 
print("It will be written in ", fn) 
--open the file in fn and write txt 
fp = io.open(fn, "w+") 
fp:write(txt) 
fp:write("\n") 
time = toc()
fp:write("Elapsed time: ", time, "secs")
fp:close() 
-- read the content to "tt" 
fp = io.open(fn, "r") 
tt = fp:read("*all") 
fp:close() 
-- tt to output 
io.write(tt) 
print ("Are you done ?")
-- if done isdone becomes true
di = io.read("*a")
if di == y then isdone = true
end



