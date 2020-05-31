cls() 
io.write("\nEnter your name: ") 
name = io.read("*a") 
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
cls() 
io.write("LUADUNGEON by \n") 
io.write( " ASCII Benefactor" ) 
io.write("\n You are : ", name, "\n" ) 
io.write( "you have ", hp ," health" ) 
while isded do 
io.write("You attack ", mname, "\n") 
mhp = mhp - atk 
io.write(mname, " has ", mhp, " Hp." ) 
end 
    