#Every 20 seconds, reset the timer and call the function to replace a block
execute as @e[type=marker,tag=glowstone] at @s if score @s glowstone_timer matches 400:
    scoreboard players reset @s glowstone_timer
    scoreboard players reset @s trackBlock 

    function uncorrupt:create_block_array