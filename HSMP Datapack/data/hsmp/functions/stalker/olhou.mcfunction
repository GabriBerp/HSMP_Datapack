execute at @e[tag=stalker,sort=nearest,limit=1] run playsound entity.phantom.death hostile @a ~ ~ ~ 10 0.8 1
execute if score global eventoNoite matches 1 run function hsmp:stalker/checa_susto
tp @e[tag=stalker,sort=nearest,limit=1] ~ ~-256 ~
