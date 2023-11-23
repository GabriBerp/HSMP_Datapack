execute at @r[limit=1,gamemode=survival] if predicate hsmp:de_noite run function hsmp:stalker/checa_denovo
execute at @r[limit=1,gamemode=survival] if predicate hsmp:de_noite run function hsmp:estatua/checa_denovo

execute at @a if predicate hsmp:comecou_noite run function hsmp:noites/checar
execute at @a if predicate hsmp:terminou_noite run function hsmp:noites/cabou

execute at @e[type=armor_stand,tag=!estatua_real,sort=random,limit=1] if predicate hsmp:estatua_spawnar run function hsmp:estatua/transformar