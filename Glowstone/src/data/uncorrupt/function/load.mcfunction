#Initialize the various scoreboards/variables
scoreboard objectives add glowstone_timer dummy

scoreboard objectives add trackBlock dummy
scoreboard objectives add uncorruptedBlocks dummy

#Set the limit of uncorrupted blocks the marker will find before being deleted
scoreboard objectives add uncorruptedBlockLimit dummy
scoreboard players set $limit uncorruptedBlockLimit 1000



