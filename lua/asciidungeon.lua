function sscr() 
print '\n' 
print('ASCII Dungeon') 
print '-------------' 
print '    by    ' 
print( ' ASCIIBene' ) 
print '\n' 
print("Who are you ?") 
print('You are :', p.name) 
print( 'you have', p.hp,'health' ) 
print('You deal', p.atk, ' damage') 
print("\n") 
sleep(19) 
end 

function monstname(x) --x must be booxl 
--Creates a random name 
nadj ="" 
if x == true then 
adj = {'The tough', 'the durable', 'Scary', 'Hideous'} 
z = rnd(1, #adj) 
nadj = adj[z] 
end 
local name ={'skeleton', 'Dracula', 'Satan', 'Jello'} 
z = rnd(1, #name) 
n1 = name[z] 
local name2 ={'Smith', 'Johnson', 'OBrien', 'Hendrix'} 
z = rnd(1, #name2) 
n2 = name2[z] 
nam = nadj .. " " .. n1 .. " " .. n2 
return nam
end 

function makelife() 
m = {name =''} 
p = { 
name = 'Ascii', 
hp = 25, 
atk = rnd(1, 7), 
xp = 0, 
potion = 0, 
isded = false } 
end 

function rnd(x, y) 
z = math.random(x, y) 
return z 
end 

function xpdrain() 
lvlthresh = p.lvl*80
p.xp = p.xp + m.xp 
if p.xp >= lvlthresh then 
p.lvl=p.lvl+1
p.xp=p.xp-lvlthresh
end
end 

function newmonster(x) 
m = { 
hp = rnd(5, 40), 
xp = rnd(1, 99), 
name = monstname(x), 
atk = rnd(p.atk, 25), 
lvl = t, 
isded = false } 

return m 
end 

function inc(v, a) 
 _G[v] = _G[v] + a 
end 
function dec(v, m) 
 _G[v] = _G[v] - m 
end 

function ginput() 
str = io.read("*a") 
return str 
end 

function attack(atkr,vctm) 
print(atkr.name, ' attacks ', vctm.name) 
vctm.hp = vctm.hp - atkr.atk 
  --if p kills m 
 if vctm.hp <= 0 and vctm.name ~= p.name then 
  m.isded = true 
  print(vctm.name, 'Dies!') 
  print('You killed', vctm.name, '. Use a potion?')
   if yesno() == true then 
     usepotion()
   end
 elseif vctm.hp <= 0 and vctm.name == p.name then 
  p.isded = true 
  print(vctm.name, ' dies......') 
  gameover()
 else 
  print (vctm.name, 'has', vctm.hp, 'HP left') 
 end 
end 

function gameover()
print "GAME OVER"
endgame = true
end

function usepotion()
if p.potion > 0 then
p.hp = p.hp + rnd(5, 15)
p.potion=p.potion-1
else
print 'You have zero Potions.'
end
end

function search()
print 'You search the room for items...'
if rnd(1,3) == 1 then
print 'You find a potion !'
else 
print 'you find nothing interesting...'
end
end


function sight()
print('You see a painting of', monstname(true),'on the wall')
end

function percent(x)
dice=rnd(1,100)
if dice <= x then
rollwin=true
elseif dice > x then
rollwin = false
end
return rollwin
end

function explore()
print 'You move on deeper unto the dungeon'
if percent(50) == true then 
sight()
end
newroom()
end

function yesno() 
inp = io.read('*a') 
if inp == 'y' then 
x = true 
elseif inp == "Y" then
x = true
elseif inp == 'yes' then
x = true
else 
x = false 
end 
return x 
end 

function decision()
print "Choose one of the following\n"
print "1 . Explore the Dungeon.\n"
print '2 . Search the room.\n'
print '3 . Check your status'
print '4 . See your inventory'
choice = io.read("*a")
if choice == 1 then
explore()
elseif choice == 2 then
search()
elseif choice == 3 then
status()
elseif choice == 4 then
seeinv()
else
print "Invalid choice"
end

end

::start:: 

t = 1
makelife() 
endgame = false 
sscr() 
repeat 
decision()
newroom()
newmonster() 
repeat 
attack(p, m) 
attack(m, p) 
print('End of turn', t)
t=t+1 
until m.isded or p.isded
until endgame 
print'New game?'
pa = yesno() 
if pa == true then 
goto start 
end 
