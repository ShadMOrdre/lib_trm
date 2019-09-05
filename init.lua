
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
	
	
	--minetest.register_on_mods_loaded(
	--	if minetest.global_exists("default") and minetest.get_modpath("default") then
	--		dofile(MP.."/lib_trm_default_support.lua")
	--	end
	--)

	minetest.register_on_mods_loaded(function()
		for _, node_name in pairs(minetest.registered_nodes) do
			local node_def = minetest.registered_nodes[node_name]
			if node_def.tool_capabilities then
				minetest.override_item(node_name, {
					original_description = "Diamond Pickaxe",
					description = toolranks.create_description("Diamond Pickaxe", 0, 1),
					after_use = toolranks.new_afteruse
				})
			end
		end
	end



minetest.log(S("[MOD] lib_trm:  Successfully loaded."))




























