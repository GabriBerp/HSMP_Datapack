
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=1},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run tag @e[type=arrow,distance=..3] add flechaveneno
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=1},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run playsound block.slime_block.break block @a ~ ~ ~ 1 1 1

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=2},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run tag @e[type=arrow,distance=..3] add flechafogo
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=2},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run playsound item.bucket.empty_lava neutral @a ~ ~ ~ 1 1 1

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=3},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run tag @e[type=arrow,distance=..3] add flechasom
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=3},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 1 1 1

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=4},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run tag @e[type=arrow,distance=..3] add flechagelo
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=4},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run playsound block.glass.break block @a ~ ~ ~ 1 1 1

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=5},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run tag @e[type=arrow,distance=..3] add flechaterra
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=5},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run playsound block.grass.break block @a ~ ~ ~ 1 1 1

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=6},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run tag @e[type=arrow,distance=..3] add flechaenergia
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},scores={Elemento=6},sort=nearest,limit=1] if entity @e[type=arrow,distance=..3] run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1 1

scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco 0