execute as @a[nbt=!{Inventory:[{Slot:-106b}]}] run title @a[nbt=!{Inventory:[{Slot:-106b}]},sort=nearest,limit=1] actionbar {"text":"Nenhuma Amostra de Elemento encontrada","bold":true,"color":"yellow"}


execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{display:{Lore:['[{"text":"Emite um gas venenoso extremamente forte"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/tipo_venenoso
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magma_cream",tag:{display:{Lore:['[{"text":"Carrega uma chama intensa"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/tipo_fogo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:beetroot_seeds",tag:{display:{Lore:['[{"text":"Isso é o caminho para um novo mundo"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/tipo_terra
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:echo_shard",tag:{display:{Lore:['[{"text":"Um cristal carregado de sons estranhos"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/tipo_som
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:prismarine_crystals",tag:{display:{Lore:['[{"text":"São extremamente frios, porem não calculistas"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/tipo_gelo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot",tag:{display:{Lore:['[{"text":"Perigo, não chegue perto demais!"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/tipo_energia
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:heart_of_the_sea",tag:{display:{Lore:['[{"text":"Retira seu poder atual, permitindo muda-lo"}]']}}}]},predicate=!minepowers:ta_agachado] run function minepowers:coletador/limpar_tipo

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{display:{Lore:['[{"text":"Emite um gas venenoso extremamente forte"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_venenoso
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magma_cream",tag:{display:{Lore:['[{"text":"Carrega uma chama intensa"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_fogo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:beetroot_seeds",tag:{display:{Lore:['[{"text":"Isso é o caminho para um novo mundo"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_terra
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:echo_shard",tag:{display:{Lore:['[{"text":"Um cristal carregado de sons estranhos"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_som
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:prismarine_crystals",tag:{display:{Lore:['[{"text":"São extremamente frios, porem não calculistas"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_gelo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot",tag:{display:{Lore:['[{"text":"Perigo, não chegue perto demais!"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_energia
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:heart_of_the_sea",tag:{display:{Lore:['[{"text":"Retira seu poder atual, permitindo muda-lo"}]']}}}]},predicate=minepowers:ta_agachado] run function minepowers:coletador/info_limpar

scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador 0