#built using mc-build (https://github.com/mc-build/mc-build)

kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:stone",Count:3b}},distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},distance=..0.5]
particle firework ~ ~ ~ .5 .5 .5 0 20 force
playsound entity.firework_rocket.blast master @a ~ ~ ~ .5 1.2
summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick"}}