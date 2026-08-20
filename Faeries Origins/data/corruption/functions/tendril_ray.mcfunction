# Laeuft an jedem Raycast-Schritt (positioniert am Strahlpunkt).
# Markiert getroffene Nicht-Sculk-Entities (ausser Caster) + zeichnet den Tentakel-Strang.
tag @e[distance=..1.6,type=!#sculkhorde:sculk_entity,tag=!catalyst_self] add catalyst_grabbed
# Tentakel-Koerper: teal -> dunkles Dust, leicht gestreut fuer Dicke (1.20.1-Partikelformat).
particle minecraft:dust_color_transition 0.16 0.70 0.64 1.4 0.03 0.16 0.13 ~ ~ ~ 0.06 0.06 0.06 0 3
# Sculk-Seelen-Wisps entlang des Strangs.
particle minecraft:sculk_soul ~ ~ ~ 0.05 0.05 0.05 0.006 1
