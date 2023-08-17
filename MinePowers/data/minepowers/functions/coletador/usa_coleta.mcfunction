execute as @a[nbt=!{Inventory:[{Slot:-106b}]}] run title @a[nbt=!{Inventory:[{Slot:-106b}]},sort=nearest,limit=1] actionbar {"text":"Nenhuma Amostra de Elemento encontrada","bold":true,"color":"yellow"}


execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{display:{Lore:['[{"text":"Emite um gas venenoso extremamente forte"}]']}}}]}] run function minepowers:coletador/tipo_venenoso
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magma_cream",tag:{display:{Lore:['[{"text":"Carrega uma chama intensa"}]']}}}]}] run function minepowers:coletador/tipo_fogo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:beetroot_seeds",tag:{display:{Lore:['[{"text":"Isso é o caminho para um novo mundo"}]']}}}]}] run function minepowers:coletador/tipo_terra
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:echo_shard",tag:{display:{Lore:['[{"text":"Um cristal carregado de sons estranhos"}]']}}}]}] run function minepowers:coletador/tipo_som
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:prismarine_crystals",tag:{display:{Lore:['[{"text":"São extremamente frios, porem não calculistas"}]']}}}]}] run function minepowers:coletador/tipo_gelo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot",tag:{display:{Lore:['[{"text":"Perigo, não chegue perto demais!"}]']}}}]}] run function minepowers:coletador/tipo_energia

scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador 0