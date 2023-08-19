tellraw @a {"text":"<CaraAleatorio69> cheguei"} 

scoreboard objectives add Elemento dummy

scoreboard objectives add onetimecode dummy
scoreboard players set @a onetimecode 0

scoreboard objectives add UsaColetador used:warped_fungus_on_a_stick
scoreboard players set @a UsaColetador 0

scoreboard objectives add UsaArco used:bow
scoreboard players set @a UsaArco 0

scoreboard objectives add FallCooldown dummy

execute as @a[scores={Elemento=0}] run execute store result score @a[scores={Elemento=0},sort=nearest,limit=1] Elemento run loot spawn ~ ~ ~ loot minepowers:random_elemento
execute as @a if score @a[sort=nearest,limit=1] Elemento matches 1.. run scoreboard players set @a[sort=nearest,limit=1] onetimecode 1
execute as @a if score @a[sort=nearest,limit=1] Elemento matches 1.. run function minepowers:mudar_vida
