playsound block.stone.break block @a ~ ~ ~ 5 0.2 1
playsound entity.wither.break_block hostile @a ~ ~ ~ 5 0.2 1
playsound block.grindstone.use block @a ~ ~ ~ 5 0.2 1
summon husk ~ ~ ~ {Health:100,CustomName:'{"text": "Suporte de Armaduras"}',PersistenceRequired:1b,Silent:1b,Invulnerable:1b,Tags:["estatua"],Attributes:[{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.movement_speed",Base:0.5d},{Name:"generic.follow_range",Base:2048d},{Name:"generic.attack_damage",Base:15d},{Name:"generic.max_health",Base:100d}]}

tag @e[type=armor_stand,tag=!estatua_real,sort=nearest,limit=1] add estatua_real
data modify entity @e[tag=estatua_real,sort=nearest,limit=1] Invulnerable set value 1b
data modify entity @e[tag=estatua_real,sort=nearest,limit=1] DisabledSlots set value 4144959

execute store result score @e[tag=estatua] estatuaId run data get entity @e[tag=estatua,sort=nearest,limit=1] UUID
execute store result score @e[tag=estatua_real] estatuaId run data get entity @e[tag=estatua,sort=nearest,limit=1] UUID