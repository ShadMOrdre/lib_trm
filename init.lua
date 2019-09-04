
lib_trm = {}
lib_trm.name = "lib_trm"
lib_trm.ver_max = 0
lib_trm.ver_min = 0
lib_trm.ver_rev = 1
lib_trm.authorship = "lisacvuk, davidthecreator, shadmordre"
lib_trm.license = "LGLv2.1"
lib_trm.copyright = "2019"
lib_trm.path_mod = minetest.get_modpath(minetest.get_current_modname())
lib_trm.path_world = minetest.get_worldpath()


lib_trm.intllib = minetest.get_translator(lib_trm.name)
local S = lib_trm.intllib

minetest.log(S("[MOD] lib_trm:  Loading..."))
minetest.log(S("[MOD] lib_trm:  Legal Info: Copyright " .. lib_trm.copyright .. " " ..lib_trm.authorship))
minetest.log(S("[MOD] lib_trm:  License: " .. lib_trm.license))


dofile(lib_trm.path_mod.."/lib_trm_toolcap_modifier.lua")
dofile(lib_trm.path_mod.."/lib_trm_tool_ranks.lua")


minetest.log(S("[MOD] lib_trm:  Successfully loaded."))




























