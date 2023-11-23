execute at @p unless entity @e[tag=estatua,distance=..32] run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["spawner_estatua"]}
spreadplayers ~ ~10 10 60 true @e[tag=spawner_estatua]