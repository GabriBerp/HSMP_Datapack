
## Flecha Veneno
execute at @e[type=arrow,tag=flechaveneno,nbt={inGround:0b}] run particle minecraft:block slime_block ~ ~ ~ 0 0 0 0 2 force

execute at @e[type=arrow,tag=flechaveneno,nbt={inGround:1b}] run playsound entity.wither.break_block hostile @a ~ ~ ~ 1 1 1
execute at @e[type=arrow,tag=flechaveneno,nbt={inGround:1b}] run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;9894400],FadeColors:[I;2073875]}],Flight:0}}}}
execute at @e[type=arrow,tag=flechaveneno,nbt={inGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:dust_color_transition,Color:9894400,Potion:"strong_poison",Radius:2,RadiusPerTick:0.02f,Duration:100}
execute at @e[type=arrow,tag=flechaveneno,nbt={inGround:1b}] run tp @e[type=arrow,sort=nearest,limit=1] ~ ~-256 ~
## Flecha Fogo
execute at @e[type=arrow,tag=flechafogo,nbt={inGround:0b}] run particle minecraft:lava ~ ~ ~ 0 0 0 0 2 force
execute at @e[type=arrow,tag=flechafogo,nbt={inGround:0b}] run scoreboard players add @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown 1
execute at @e[type=arrow,tag=flechafogo,nbt={inGround:0b}] if score @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown matches 4 run summon falling_block ~ ~ ~ {Time:1,BlockState:{Name:"fire"}}
execute at @e[type=arrow,tag=flechafogo,nbt={inGround:0b}] if score @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown matches 4 run scoreboard players set @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown 0
## Flecha Som
execute at @e[type=arrow,tag=flechasom,nbt={inGround:0b}] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 2 force
## Flecha Gelo
execute at @e[type=arrow,tag=flechagelo,nbt={inGround:0b}] run particle minecraft:block blue_ice ~ ~ ~ 0 0 0 0 2 force
## Flecha Terra
execute at @e[type=arrow,tag=flechaterra,nbt={inGround:0b}] run particle minecraft:block dirt ~ ~ ~ 0 0 0 0 2 force
execute at @e[type=arrow,tag=flechaterra,nbt={inGround:0b}] run scoreboard players add @e[type=arrow,tag=flechaterra,sort=nearest,limit=1] FallCooldown 1
execute at @e[type=arrow,tag=flechaterra,nbt={inGround:0b}] if score @e[type=arrow,tag=flechaterra,sort=nearest,limit=1] FallCooldown matches 8 run summon falling_block ~ ~ ~ {BlockState:{Properties:{thickness:"tip_merge",vertical_direction:"down"},Name:"pointed_dripstone"},Time:1}
execute at @e[type=arrow,tag=flechaterra,nbt={inGround:0b}] if entity @e[type=falling_block,nbt={BlockState:{Properties:{thickness:"tip_merge",vertical_direction:"down"},Name:"minecraft:pointed_dripstone"}},distance=..5] run tag @e[type=falling_block,nbt={BlockState:{Properties:{thickness:"tip_merge",vertical_direction:"down"},Name:"minecraft:pointed_dripstone"}},distance=..5] add blococai
execute at @e[type=arrow,tag=flechaterra,nbt={inGround:0b}] if score @e[type=arrow,tag=flechaterra,sort=nearest,limit=1] FallCooldown matches 8 run scoreboard players set @e[type=arrow,tag=flechaterra,sort=nearest,limit=1] FallCooldown 0
## Flecha Energia
execute at @e[type=arrow,tag=flechaenergia,nbt={inGround:0b}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force
execute at @e[type=arrow,tag=flechaenergia,nbt={inGround:0b}] run scoreboard players add @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown 1
execute at @e[type=arrow,tag=flechaenergia,nbt={inGround:0b}] if score @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown matches 8 run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[I;6719955],FadeColors:[I;15790320]}],Flight:0}}}}
execute at @e[type=arrow,tag=flechaenergia,nbt={inGround:0b}] if score @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown matches 8 run scoreboard players set @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown 0