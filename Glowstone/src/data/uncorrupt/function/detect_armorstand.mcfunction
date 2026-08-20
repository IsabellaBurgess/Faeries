execute as @e[type=armor_stand,tag=glowstone] at @s:
    setblock ~ ~ ~ glowstone
    kill @s

    execute positioned ~ ~ ~ summon marker:
        tag @s add glowstone
        function uncorrupt:create_block_array



