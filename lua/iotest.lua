-- Easy HTML Maker
-- asciibene 

cls()
tic()

function inp(str)
str = io.read('*a')
return str
end

function tmr(t)
t = toc() 
print("Elapsed time: ", time, "secs")
end


function loadf(fn) 
if fn == "" then
print 'Enter path to file'
else 
print("It will be written in ", fn) 
fp = io.open(fn, "w+")
return fp
end
end

function closef()
fp:close()
end

function temphtml()
writef("<!doctype html>")
cr()
writef('<html>')
cr()
writef('<head>')
cr()
writef('<title>' .. title .. '</title>')
cr()
writef('</head>')
cr()
writef('<body>')
cr()
end

function endhtml()
writef('</body>')
cr()
writef('</html>')
cr()
end

function wrdiv(txt)
Print 'Please enter the letter of the tag\n'
print 'I.e : p or a'
ltr = io.read("*a")
tag = "<" .. ltr .. '>'
tagclose = '</' .. ltr .. '>'
div = tag .. txt .. tagclose .. '\n'
print(div)
return div
end

function done()
print ("Are you done ? (Type y or n)") 
di = io.read("*a") 
if di == "y" then isdone = true 
else isdone = false
end 
end 


function cr(times)
if not times then
times = 1
end
for i = 1, times do
fp:write("\n")
i=1+1
end
end

function writef(txt)
io.write(txt)
end

function readfile(fn)
fp = io.open(fn, "r") 
out = fp:read("*all")
return out
end


fn = "/mnt/sdcard/htmlmake.html" 
loadfile(fn)
writef()
temphtml()
wrdiv()
