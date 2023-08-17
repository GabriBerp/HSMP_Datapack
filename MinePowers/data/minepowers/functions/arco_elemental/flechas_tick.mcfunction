## Flecha Veneno
execute at @e[type=arrow,tag=flechaveneno] run particle minecraft:block slime_block ~ ~ ~ 0 0 0 0 2 force
## Flecha Fogo
execute at @e[type=arrow,tag=flechafogo] run particle minecraft:lava ~ ~ ~ 0 0 0 0 2 force
execute at @e[type=arrow,tag=flechafogo] run scoreboard players add @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown 1
execute at @e[type=arrow,tag=flechafogo] if score @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown matches 4 run summon falling_block ~ ~ ~ {Time:1,BlockState:{Name:"fire"}}
execute at @e[type=arrow,tag=flechafogo] if score @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown matches 4 run scoreboard players set @e[type=arrow,tag=flechafogo,sort=nearest,limit=1] FallCooldown 0
## Flecha Som
execute at @e[type=arrow,tag=flechasom] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 2 force
## Flecha Gelo
execute at @e[type=arrow,tag=flechagelo] run particle minecraft:block blue_ice ~ ~ ~ 0 0 0 0 2 force
## Flecha Terra
execute at @e[type=arrow,tag=flechaterra] run particle minecraft:block dirt ~ ~ ~ 0 0 0 0 2 force
## Flecha Energia
execute at @e[type=arrow,tag=flechaenergia] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force
execute at @e[type=arrow,tag=flechaenergia] run scoreboard players add @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown 1
execute at @e[type=arrow,tag=flechaenergia] if score @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown matches 8 run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[I;6719955],FadeColors:[I;15790320]}],Flight:0}}}}
execute at @e[type=arrow,tag=flechaenergia] if score @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown matches 8 run scoreboard players set @e[type=arrow,tag=flechaenergia,sort=nearest,limit=1] FallCooldown 0