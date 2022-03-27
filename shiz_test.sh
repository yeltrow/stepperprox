halcmd loadrt stepperprox names=stepprox_x,stepprox_y,stepprox_z
halcmd addf stepprox_x servo-thread
halcmd unlinkp hm2_7i76e.0.7i76.0.0.input-16-not
halcmd net prox_x hm2_7i76e.0.7i76.0.0.input-16-not
halcmd net prox_x stepprox_x.prox
halcmd net x-pos-cmd stepprox_x.position 
halcmd net x-vel-cmd stepprox_x.vel-cmd 
# When ready to actually use for homing
# halcmd unlinkp hm2_7i76e.0.7i76.0.0.input-01-not
# halcmd net min-home-x stepprox_x.home-sw-out
# halcmd net home-sw-raw-x hm2_7i76e.0.7i76.0.0.input-01-not
# halcmd net home-sw-raw-x stepprox_x.home-sw-out
#
halcmd addf stepprox_y servo-thread
halcmd unlinkp hm2_7i76e.0.7i76.0.0.input-17-not
halcmd net prox_y hm2_7i76e.0.7i76.0.0.input-17-not
halcmd net prox_y stepprox_y.prox
halcmd net y-pos-cmd stepprox_y.position 
halcmd net y-vel-cmd stepprox_y.vel-cmd 

halcmd addf stepprox_z servo-thread
halcmd unlinkp hm2_7i76e.0.7i76.0.0.input-18-not
halcmd net prox_z hm2_7i76e.0.7i76.0.0.input-18-not
halcmd net prox_z stepprox_z.prox
halcmd net z-pos-cmd stepprox_z.position 
halcmd net z-vel-cmd stepprox_z.vel-cmd 


halcmd setp stepprox_x.resetCmd 1 ; sleep 0.5 ; halcmd setp stepprox_x.resetCmd 0
halcmd setp stepprox_y.resetCmd 1 ; sleep 0.5 ; halcmd setp stepprox_y.resetCmd 0
halcmd setp stepprox_z.resetCmd 1 ; sleep 0.5 ; halcmd setp stepprox_z.resetCmd 0

halcmd setp stepprox_x.position-tolerance 0.050
halcmd setp stepprox_y.position-tolerance 0.050
halcmd setp stepprox_z.position-tolerance 0.050
