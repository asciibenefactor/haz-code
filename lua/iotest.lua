-- Basic file In/Out test
-- asciibene 
cls() 
it = io.read("*a")
fn = "/mnt/sdcard/test.txt" 
--open the file in fn and write "it"
fp = io.open(fn, "w+") 
fp:write(it) 
fp:close()
-- read the content to "tt"
fp = io.open(fn, "r") 
tt = fp:read("*all") 
fp:close() 
-- tt to output
io.write(tt) 
