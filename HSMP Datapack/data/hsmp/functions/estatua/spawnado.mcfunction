execute at @a[sort=nearest,limit=1] run playsound block.stone.break block @a ~ ~ ~ 5 0.2 1
execute at @a[sort=nearest,limit=1] run playsound block.grindstone.use block @a ~ ~ ~ 5 0.2 1
summon husk ~ ~ ~ {Health:100,CustomName:'{"text": "Suporte de Armaduras"}',PersistenceRequired:1b,Silent:1b,Invulnerable:1b,Tags:["estatua"],Attributes:[{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.movement_speed",Base:0.5d},{Name:"generic.follow_range",Base:2048d},{Name:"generic.attack_damage",Base:15d},{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invulnerable:1b,Tags:["estatua_real"],ArmorItems:[{},{},{},{}]}

execute store result score @e[tag=estatua] estatuaId run data get entity @e[tag=estatua,sort=nearest,limit=1] UUID
execute store result score @e[tag=estatua_real] estatuaId run data get entity @e[tag=estatua,sort=nearest,limit=1] UUID