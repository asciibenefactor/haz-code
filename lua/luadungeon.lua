function inc(v) 
 _G[v] = _G[v] + 1 
end 
function dec(v) 
 _G[v] = _G[v] - 1 
end 

function ginput(str)
str = io.read('*a')
return str
end

function attack()
mhp = mhp - atk
print ('You hit ', mname, ' !')
print ('\nIt has ', mhp, ' HP left')
end

function mattack()
hp = hp - matk
print (mname, ' hits ', name, ' !')
print ('\nYou have ', hp, ' HP left')
end

io.write("\nEnter your name: ") 
name = 'AB'
-- Define Player stats 
hp = 25 
atk = 3 
lvl = 0 
isded = false 
--Define monster stats (initial) 
mhp = 5 
mname = "JELLO" 
matk = 1 
mlvl = 0 
-- start 
io.write("LUADUNGEON by \n") 
io.write( " ASCII Benefactor" )
io.write("\n You are : ", name, "\n" ) 
io.write( "you have ", hp ," health" )


attack()
mattack()
