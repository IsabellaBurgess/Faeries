#Increase the timer for each active glowstone marker
scoreboard players add @e[type=marker,tag=glowstone] glowstone_timer 1

#Check to see if there are any new armorstands that have been placed
execute function uncorrupt:detect_armorstand

#Check to see if there are any markers who need to be deleted
execute function uncorrupt:kill_marker

#Check to see if the timer needs to be reset
execute function uncorrupt:time

