#遮断したコマブロを復元→終了

setblock 0 -62 1 minecraft:chain_command_block[conditional=false,facing=north]{UpdateLastExecution:0b,auto:1b,conditionMet:0b,powered:0b}
setblock 0 -63 1 minecraft:air
execute store result score #Alice sk_string run data get storage string: count
scoreboard players add #Alice sk_string 1
execute store result storage string: count int 1 run scoreboard players get #Alice sk_string
data modify storage string: exec set value 0b
