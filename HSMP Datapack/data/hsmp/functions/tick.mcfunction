
execute if score global ativarNoite matches 1 run function hsmp:tick_noite

# Evento de Iniciar Caos
execute at @a[nbt={Inventory:[{tag:{olho:1b}}]}] if score global ativarNoite matches 0 run function hsmp:evento/iniciar_evento


execute at @r[limit=1,predicate=hsmp:olhou] run function hsmp:stalker/olhou
execute at @r[limit=1,predicate=hsmp:olhou_estatua] run function hsmp:estatua/olhou

execute at @e[tag=spawner] unless block ~ ~-0.1 ~ air run function hsmp:stalker/ded
execute at @e[tag=spawner_estatua] unless block ~ ~-0.1 ~ air run function hsmp:estatua/ded

execute at @e[tag=stalker] run tp @e[tag=stalker,sort=nearest,limit=1] ~ ~ ~ facing entity @a[sort=nearest,limit=1] feet

effect give @e[tag=stalker] invisibility infinite 1 true
execute at @e[tag=stalker] run particle dust 0 0 0 10 ~ ~1.6 ~ 0.2 0.2 0.2 0.2 1 force
execute at @e[tag=stalker] run particle dust 0 0 0 3 ~ ~1 ~ 0 1 0 0.2 1 force

effect give @e[tag=stalker_chase] invisibility infinite 1 true
execute at @e[tag=stalker_chase] run particle dust 0 0 0 10 ~ ~1.6 ~ 0.2 0.2 0.2 0.2 1 force
execute at @e[tag=stalker_chase] run particle dust 0 0 0 3 ~ ~1 ~ 0 1 0 0.2 1 force

effect give @e[tag=estatua] invisibility infinite 1 true

scoreboard players add @e[tag=stalker_chase] TempoStalker 1

execute at @e[tag=estatua_real] if score @e[tag=estatua,sort=nearest,limit=1] estatuaId = @e[tag=estatua_real,sort=nearest,limit=1] estatuaId run tp @e[tag=estatua_real,sort=nearest,limit=1] @e[tag=estatua,sort=nearest,limit=1]
execute at @e[tag=estatua_real] unless entity @e[tag=estatua,distance=..2] run kill @e[tag=estatua_real,sort=nearest,limit=1]

execute at @e[tag=estatua] unless entity @e[tag=estatua_real,distance=..2] run tp @e[tag=estatua,sort=nearest,limit=1] ~ ~-256 ~

execute at @e[tag=stalker_chase] if score @e[tag=stalker_chase,limit=1,sort=nearest] TempoStalker matches 100 run tp @e[tag=stalker_chase,limit=1,sort=nearest] ~ ~-256 ~