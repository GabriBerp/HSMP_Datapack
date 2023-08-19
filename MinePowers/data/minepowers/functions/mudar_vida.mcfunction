execute as @a[scores={Elemento=..4},sort=nearest,limit=1] run attribute @a[scores={Elemento=..4},sort=nearest,limit=1] generic.max_health base set 20
execute as @a[scores={Elemento=..4},sort=nearest,limit=1] run attribute @a[scores={Elemento=..4},sort=nearest,limit=1] generic.armor base set 0
execute as @a[scores={Elemento=..4},sort=nearest,limit=1] run damage @a[scores={Elemento=..4},sort=nearest,limit=1] 1 generic at ~ ~ ~

execute as @a[scores={Elemento=5},sort=nearest,limit=1] run attribute @a[scores={Elemento=5},sort=nearest,limit=1] generic.max_health base set 8
execute as @a[scores={Elemento=5},sort=nearest,limit=1] run damage @a[scores={Elemento=5},sort=nearest,limit=1] 1 generic at ~ ~ ~

execute as @a[scores={Elemento=6},sort=nearest,limit=1] run attribute @a[scores={Elemento=6},sort=nearest,limit=1] generic.max_health base set 40
execute as @a[scores={Elemento=6},sort=nearest,limit=1] run attribute @a[scores={Elemento=6},sort=nearest,limit=1] generic.armor base set 6
scoreboard players set @a[sort=nearest,limit=1] onetimecode 0