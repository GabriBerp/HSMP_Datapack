setblock ~ ~ ~ pointed_dripstone{blockState:{Properties:{thickness:"tip",vertical_direction:"up"}}} replace
playsound block.dripstone_block.place block @a ~ ~ ~ 1 1 1
kill @e[tag=blococai,sort=nearest,limit=1]