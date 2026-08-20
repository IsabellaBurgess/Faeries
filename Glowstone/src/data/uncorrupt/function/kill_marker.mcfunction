#If the marker has run into enough blocks that are uncorrupted, delete the marker
execute as @e[type=marker,tag=glowstone] at @s if score @s uncorruptedBlocks >= $limit uncorruptedBlockLimit:
    kill @s