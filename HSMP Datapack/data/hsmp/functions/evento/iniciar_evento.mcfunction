stopsound @a music
scoreboard players set global ativarNoite 1
title @a title {"text": "Ladrão!","color": "dark_red","bold": true}
title @a subtitle {"text": "Vocês estão mexendo com coisas que não lhe pertencem..","color": "dark_red","bold": true}
execute at @a run playsound entity.ghast.hurt ambient @a ~ ~ ~ 10 0.2 1
execute at @a run playsound entity.wither.death ambient @a ~ ~ ~ 10 0.2 1
execute at @a run playsound entity.warden.emerge ambient @a ~ ~ ~ 10 0.2 1
execute at @e[type=armor_stand,distance=..100] run function hsmp:estatua/transformar
playsound music.overworld.deep_dark music @a ~ ~ ~ 10 1 1
weather thunder
summon lightning_bolt ~ ~ ~
