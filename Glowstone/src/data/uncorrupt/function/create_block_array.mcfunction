from bolt_expressions import Scoreboard, Data
scoreboard players set $min random 0
scoreboard players set $max random 175
function random:true_uniform

r = 0
t = 0

#Run through each block in a 5x5x7 cube
for i in range(5):
    for j in range(5):
        for n in range(7):
            x = i - 2
            y = n - 4
            z = j - 2

            #Update a counter
            r += 1

            #If the counter value equals a randomly generated value, check to see 
            #if it matches one of the blocks that has already been uncorrupted. If
            #so, call the function again and chose a new random block. Also, add one
            #to the running tally of uncorrupted blocks for the current marker. 
            execute as @s if score $out random matches r:

                execute if block ~x ~y ~z air: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                    
                execute if block ~x ~y ~z grass_block: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z stone: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                execute if block ~x ~y ~z dirt: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z jungle_log: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                execute if block ~x ~y ~z stripped_oak_log: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                execute if block ~x ~y ~z oak_log:
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z mangrove_log: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                execute if block ~x ~y ~z dark_oak_log: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z birch_log: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
  
                execute if block ~x ~y ~z oak_leaves: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                execute if block ~x ~y ~z dark_oak_leaves: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z podzol: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z coarse_dirt: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z chorus_plant: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z chorus_flower: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                execute if block ~x ~y ~z sculk_sensor: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z crimson_fungus: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
  
                execute if block ~x ~y ~z sculk_vein: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z warped_fungus: 
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array

                #If a glowstone is placed at the base of the large tree,
                #send a warning message to The Conductor.

                execute if block ~x ~y ~z cherry_log: 
                    title yourpalval2004 actionbar [{"text":"There is ","color":"#cfbad6","shadow_color":-12582848},{"text":"something ","italic":true,"color":"#cfbad6"},{"text":"at the roots","color":"#cfbad6","shadow_color":-12582848}]
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
                execute if block ~x ~y ~z cherry_wood: 
                    title yourpalval2004 actionbar [{"text":"There is ","color":"#cfbad6","shadow_color":-12582848},{"text":"something ","italic":true,"color":"#cfbad6"},{"text":"at the roots","color":"#cfbad6","shadow_color":-12582848}]
                    scoreboard players set @s trackBlock 2
                    scoreboard players add @s uncorruptedBlocks 1
                    function uncorrupt:create_block_array
  

                #If the random block is currently corrupted, replace it with it's
                #non-corrupted counterpart. Create particles and play a sound.
                execute if block ~x ~y ~z warped_nylium:
                    setblock ~x ~y ~z grass_block
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1
                    
                execute if block ~x ~y ~z sculk:
                    setblock ~x ~y ~z warped_nylium
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1
                 
                execute if block ~x ~y ~z netherrack:
                    setblock ~x ~y ~z dirt
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1    

                execute if block ~x ~y ~z warped_stem:
                    setblock ~x ~y ~z jungle_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z stripped_warped_stem:
                    setblock ~x ~y ~z stripped_oak_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1
                    
                execute if block ~x ~y ~z crimson_stem:
                    setblock ~x ~y ~z oak_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1
                                        
                execute if block ~x ~y ~z stripped_crimson_stem:
                    setblock ~x ~y ~z mangrove_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1
                                        
                execute if block ~x ~y ~z stripped_mangrove_log:
                    setblock ~x ~y ~z stripped_oak_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1
                                        
                execute if block ~x ~y ~z stripped_pale_oak_log:
                    setblock ~x ~y ~z dark_oak_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z pale_oak_log:
                    setblock ~x ~y ~z birch_log
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                
                execute if block ~x ~y ~z nether_wart_block:
                    setblock ~x ~y ~z oak_leaves[persistent=true]
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1
                                        
                execute if block ~x ~y ~z pale_oak_leaves:
                    setblock ~x ~y ~z dark_oak_leaves[persistent=true]
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1
                                        
                execute if block ~x ~y ~z brown_mushroom_block:
                    setblock ~x ~y ~z mangrove_leaves[persistent=true]
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z red_mushroom_block:
                    setblock ~x ~y ~z oak_leaves[persistent=true]
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z warped_wart_block:
                    setblock ~x ~y ~z azalea_leaves[persistent=true]
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z resin_block:
                    setblock ~x ~y ~z azalea_leaves[persistent=true]
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z mushroom_stem:
                    setblock ~x ~y ~z birch_leaves[persistent=true]
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                
                execute if block ~x ~y ~z crimson_nylium:
                    setblock ~x ~y ~z podzol
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1
                                  
                execute if block ~x ~y ~z end_stone:
                    setblock ~x ~y ~z stone
                    a = y + 1.1

                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]

                    scoreboard players set @s trackBlock 1

                execute if block ~x ~y ~z sculk_catalyst:
                    setblock ~x ~y ~z coarse_dirt
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1

                    
                execute if block ~x ~y ~z blackstone:
                    setblock ~x ~y ~z stone
                    a = y + 1.1
                    particle happy_villager ~x ~a ~z 0.5 0 0.5 0 26
                    playsound minecraft:block.medium_amethyst_bud.place block @a[distance=..10]
                    scoreboard players set @s trackBlock 1
    
            # execute as @s if score @s trackBlock matches 2 run say hit air
            # execute as @s if score @s trackBlock matches 1 run say hit block

            #If the block has changed, return the function.
            execute as @s if score @s trackBlock matches 1 run return 1




            



