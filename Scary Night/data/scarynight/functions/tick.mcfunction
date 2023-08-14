execute if predicate scarynight:comecou_noite if predicate scarynight:5porcentochance run function scarynight:noite_atacada_on

execute as @a[scores={Noite_Atacada=1}] if predicate scarynight:esta_de_noite run effect give @a[scores={Noite_Atacada=1},limit=1,sort=nearest] darkness 5 250 true

execute if predicate scarynight:terminou_noite run function scarynight:noite_atacada_off

## Lanterna - Functions
execute as @e[type=marker,tag=flashlight] at @s run function scarynight:__generated__/block/3
execute at @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={Lanterna_usada=1..,Lanterna_ligada=0}] run function scarynight:lanterna/lanterna_ligar
execute at @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={Lanterna_ligada=1}] run function scarynight:lanterna/lanterna_tick
execute at @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={Lanterna_usada=1..,Lanterna_ligada=1}] run function scarynight:lanterna/lanterna_desligar
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={Lanterna_ligada=1}] run execute as @e[type=marker,tag=flashlight] at @s run function scarynight:__generated__/block/5
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},scores={Lanterna_ligada=0}] run execute as @e[type=marker,tag=flashlight] at @s run function scarynight:__generated__/block/5

## Mob 1 "A Estatua" - Functions

execute as @e[tag=mob1_estatua] if predicate scarynight:esta_escuro1 if predicate scarynight:esta_escuro2 run function scarynight:estatua/desgelado
execute as @e[tag=mob1_estatua] unless predicate scarynight:esta_escuro1 unless predicate scarynight:esta_escuro2 run function scarynight:estatua/gelado