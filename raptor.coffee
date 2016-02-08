##### set up my initial conditions
xv=-40 #this is the initial location of velociraptor (you can change)
xh=0 #location of human
av=4 #acceleration of velociraptor (you can change)
ah=3 #accel of human (can change)
vvmax=25 #maximum velocity of the velociraptor (change)
vhmax=6 #max velocity of human (change)
vh=0 #starting velocity of human
vv=0 #starting velocity of velociraptor
t=0 #starting time
dt=0.1 #time step (you can play with this)

####create arrays
velociraptor=[]
human=[]

while (xv<=xh)
  #first check if the human is at max v
  if (vh>=vhmax)
    ah=0 #if yes, set accel to zero
  #check if velociraptor is at max speed
  if (vv>=vvmax)
    av=0 #if yes, set accel to zero

  #calc new human velocity after time interval
  vh=vh+ah*dt
  #calc new velociraptor velocity
  vv=vv+av*dt

  #calc new positions
  xh=xh+vh*dt
  xv=xv+vv*dt

  #increment time
  t=t+dt

  #add data to arrays
  humanPos={
    distance: xh.toFixed(2),
    time: t.toFixed(1),
  }
  velociPos={
    distance: xv.toFixed(2),
    time: t.toFixed(1)
  }
  velociraptor.push velociPos
  human.push humanPos

#once the loop is finished, print the final location
console.log xh, t
console.log human
console.log velociraptor
