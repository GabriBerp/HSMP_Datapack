playsound ambient.cave ambient @p ~ ~ ~ 10 0.8 1
execute store result score global eventoNoite run loot spawn ~ ~ ~ loot hsmp:evento_noite

execute if score global eventoNoite matches 1 run function hsmp:noites/noite1
execute if score global eventoNoite matches 2 run function hsmp:noites/noite2
execute if score global eventoNoite matches 3 run function hsmp:noites/noite3