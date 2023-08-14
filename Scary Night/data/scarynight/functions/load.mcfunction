tellraw @a {"text":"Mamador2000 entrou no jogo","color": "yellow"}
tellraw @a {"text":"<Mamador2000> Eita, servidor errado kk"}
tellraw @a {"text":"Mamador2000 saiu do jogo","color": "yellow"}

## Scoreboards
scoreboard objectives add Lanterna_usada used:warped_fungus_on_a_stick
scoreboard players set @a Lanterna_usada 0
scoreboard objectives add Lanterna_ligada dummy
scoreboard players set @a Lanterna_ligada 0
scoreboard objectives add lub.timer1 dummy
schedule function scarynight:tick_10t 10t
scoreboard objectives add Noite_Atacada dummy
scoreboard players set @a Noite_Atacada 0