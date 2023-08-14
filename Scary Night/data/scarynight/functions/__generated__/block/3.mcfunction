#built using mc-build (https://github.com/mc-build/mc-build)

fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 light[level=13] replace #scarynight:flashlight_through_blocks
execute if entity @e[type=marker,tag=flashlight,distance=1.1..] run scoreboard players add @s lub.timer1 1
execute as @s[scores={lub.timer1=5..}] run function scarynight:__generated__/block/4