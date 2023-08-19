## Coletador de Essências - Funções
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}}] if score @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador matches 1 run function minepowers:coletador/usa_coleta
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}}] if score @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador matches 1 run scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Absorva o poder dos itens magicos"}]']}}}},sort=nearest,limit=1] UsaColetador 0

## Arco Elemental - Funções
execute as @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}}] if score @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco matches 1 run function minepowers:arco_elemental/usa_arco
execute as @a[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}}] if score @a[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco matches 1 run scoreboard players set @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Lore:['[{"text":"Suas flechas mudam dependendo do elemento do portador"}]']}}}},sort=nearest,limit=1] UsaArco 0

# Espinhos da flecha de terra viram bloco ao cair no chao
execute at @e[type=falling_block,tag=blococai] unless block ~ ~-1 ~ air run function minepowers:espinho_cai

function minepowers:arco_elemental/flechas_tick

## Jogador do Elemento Venenoso - Funções
execute as @a[scores={Elemento=1}] run effect clear @a[scores={Elemento=1}] poison
execute as @a[scores={Elemento=1}] run effect give @a[scores={Elemento=1}] hunger 2 0 true
## Jogador do Elemento Fogo - Funções
execute as @a[scores={Elemento=2}] run effect give @a[scores={Elemento=2}] fire_resistance 3 0 true
execute as @a[scores={Elemento=2},predicate=minepowers:ta_pegando_fogo] run effect give @a[scores={Elemento=2},predicate=minepowers:ta_pegando_fogo] strength 2 2 true
execute as @a[scores={Elemento=2},predicate=minepowers:ta_pegando_fogo] run effect give @a[scores={Elemento=2},predicate=minepowers:ta_pegando_fogo] regeneration 2 1 true
execute at @a[scores={Elemento=2}] if block ~ ~ ~ water_cauldron run damage @a[scores={Elemento=2},sort=nearest,limit=1] 4 generic at ~ ~ ~
execute at @a[scores={Elemento=2}] if block ~ ~ ~ water run damage @a[scores={Elemento=2},sort=nearest,limit=1] 4 generic at ~ ~ ~
## Jogador do Elemento Som - Funções
execute at @a[scores={Elemento=3}] if block ~ ~-0.1 ~ sculk run effect give @a[scores={Elemento=3},sort=nearest,limit=1] regeneration 5 1 true

execute as @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] run effect give @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] darkness 15 50 true
execute as @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] run effect clear @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] night_vision
execute as @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] run attribute @a[scores={Elemento=3},predicate=!minepowers:ta_agachado,sort=nearest,limit=1] generic.movement_speed base set 0.1
execute as @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] run effect clear @a[scores={Elemento=3},predicate=!minepowers:ta_agachado] strength
execute as @a[scores={Elemento=3},predicate=minepowers:ta_agachado] run effect clear @a[scores={Elemento=3},predicate=minepowers:ta_agachado] darkness
execute as @a[scores={Elemento=3},predicate=minepowers:ta_agachado] run effect give @a[scores={Elemento=3},predicate=minepowers:ta_agachado] strength 15 1 true
execute as @a[scores={Elemento=3},predicate=minepowers:ta_agachado] run attribute @a[scores={Elemento=3},predicate=minepowers:ta_agachado,sort=nearest,limit=1] generic.movement_speed base set 0.7
execute as @a[scores={Elemento=3},predicate=minepowers:ta_agachado] run effect give @a[scores={Elemento=3},predicate=minepowers:ta_agachado] night_vision 15 0 true

## Jogador do Elemento Gelo - Funções

## Jogador do Elemento Terra - Funções
execute as @a[scores={Elemento=5},predicate=minepowers:check_sky,predicate=!minepowers:esta_de_noite] run effect give @a[scores={Elemento=5},predicate=minepowers:check_sky,predicate=!minepowers:esta_de_noite] saturation 2 0 true 

## Mudança de vida - Funções
execute as @a[scores={onetimecode=1}] run function minepowers:mudar_vida
