## Coletador de Essências - Funções
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}}] if score @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador matches 1 run function minepowers:coletador/usa_coleta
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}}] if score @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador matches 1 run scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador 0

## Arco Elemental - Funções
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}}] if score @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco matches 1 run function minepowers:arco_elemental/usa_arco
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}}] if score @a[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco matches 1 run scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco 0

execute as @e[type=arrow,nbt={inGround:0b}] run function minepowers:arco_elemental/flechas_tick