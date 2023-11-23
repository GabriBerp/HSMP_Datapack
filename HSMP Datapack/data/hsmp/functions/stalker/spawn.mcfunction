execute at @p unless entity @e[tag=stalker,tag=stalker_chase,distance=..70] run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["spawner"]}
spreadplayers ~ ~10 10 60 true @e[tag=spawner]