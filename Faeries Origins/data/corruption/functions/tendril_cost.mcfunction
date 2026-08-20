# Kosten nur bei Treffer: wenn ein markiertes Ziel in der Naehe ist -> 40 XP + Sound; sonst Feedback.
execute if entity @e[tag=catalyst_grabbed,distance=..20] run experience add @s -40 points
execute if entity @e[tag=catalyst_grabbed,distance=..20] run playsound minecraft:block.sculk_catalyst.bloom master @a ~ ~ ~ 1 0.8
execute unless entity @e[tag=catalyst_grabbed,distance=..20] run title @s actionbar {"text":"The tendril finds no prey","color":"dark_aqua"}
