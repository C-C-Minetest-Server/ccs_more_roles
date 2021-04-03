minetest.register_privilege("ccs_donater", {
	description = "C&C Server Special Role: Give to donaters.",
	give_to_singleplayer= false,
})

better_nametags.register_tag(
	"donater", 
	"orange",
	function(player) 
		return minetest.check_player_privs(player, {ccs_donater=true}) end, 
	function(player) 
		return ("[Donater] "..player:get_player_name()) 
	end,
	2
)

minetest.register_privilege("ccs_helper", {
        description = "C&C Server Special Role: They can help you.",
        give_to_singleplayer= false,
})

better_nametags.register_tag(
        "helper",
        "orange",
        function(player)
                return minetest.check_player_privs(player, {ccs_helper=true}) end,
        function(player)
                return ("[Helper] "..player:get_player_name())
        end,
        3
)
climate_mod.forced_weather["regional_weather:ambient"] = false
