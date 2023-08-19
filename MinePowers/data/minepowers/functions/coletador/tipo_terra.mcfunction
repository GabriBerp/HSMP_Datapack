execute as @a[sort=nearest,limit=1] if score @a[sort=nearest,limit=1] Elemento matches 0 run title @a[sort=nearest,limit=1] actionbar ["",{"text":"Amostra de ","bold":true,"color":"#B4684E"},{"text":"Terra","bold":true,"color":"#6E3D1D"},{"text":" Absorvida com sucesso","bold":true,"color":"#B4684E"}]
execute as @a[sort=nearest,limit=1] if score @a[sort=nearest,limit=1] Elemento matches 0 run playsound block.beacon.activate block @a ~ ~ ~ 1 1 1
execute as @a[sort=nearest,limit=1] if score @a[sort=nearest,limit=1] Elemento matches 0 run item replace entity @a[sort=nearest,limit=1] weapon.offhand with air
execute as @a[sort=nearest,limit=1] if score @a[sort=nearest,limit=1] Elemento matches 0 run scoreboard players set @a[sort=nearest,limit=1] Elemento 5
execute as @a[sort=nearest,limit=1] unless score @a[sort=nearest,limit=1] Elemento matches 0 run scoreboard players set @a[sort=nearest,limit=1] onetimecode 1
