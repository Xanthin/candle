-- Boilerplate to support localized strings if intllib mod is installed.

local S
if (minetest.get_modpath("intllib")) then
      dofile(minetest.get_modpath("intllib").."/intllib.lua")
      S = intllib.Getter(minetest.get_current_modname())
      else
      S = function ( s ) return s end
end

--The Blocks

minetest.register_node("candles_int:basiccandle", {
	drop = 'candles_int:basiccandle',
	description = S("Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candles_int:teacandle", {
	drop = 'candles_int:teacandle',
	description = S("Tea Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"teacandle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candles_int:fatcandle", {
	drop = 'candles_int:fatcandle',
	description = S("Fat Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"fatcandle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candles_int:chandelier", {
	drop = 'candles_int:chandelier',
	description = S("Chandelier"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candles_int:waxystuff", {
	drop = 'candles_int:waxystuff',
	description = S("Waxy Stuff"),
	drawtype = "raillike",
	sunlight_propogates=true,
	tiles = {"waxystuff.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
})

minetest.register_node("candles_int:candelabra", {
	drop = 'candles_int:candelabra',
	description = S("Candelabra"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})


--The Crafting Recipes

minetest.register_craft({
	output = "candles_int:basiccandle 2",
	recipe = {
		{'', 'default:papyrus', ''},
		{'candles_int:waxystuff', 'default:papyrus', 'candles_int:waxystuff'},
		{'candles_int:waxystuff', 'default:papyrus', 'candles_int:waxystuff'},
	}
})

minetest.register_craft({
	output = "candles_int:teacandle 2",
	recipe = {
		{'', '', ''},
		{'', 'default:papyrus', ''},
		{'candles_int:waxystuff', 'candles_int:waxystuff', 'candles_int:waxystuff'},
	}
})

minetest.register_craft({
	output = "candles_int:fatcandle 2",
	recipe = {
		{'', 'default:papyrus', ''},
		{'candles_int:waxystuff', 'candles_int:waxystuff', 'candles_int:waxystuff'},
		{'candles_int:waxystuff', 'candles_int:waxystuff', 'candles_int:waxystuff'},
	}
})

minetest.register_craft({
	output = "candles_int:chandelier 1",
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'candles_int:basiccandle', 'default:steel_ingot', 'candles_int:basiccandle'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = "candles_int:waxystuff 4",
	recipe = {
		{'', '', ''},
		{'', 'default:leaves', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = "candles_int:candelabra 1",
	recipe = {
		{'candles_int:basiccandle', 'candles_int:basiccandle', 'candles_int:basiccandle'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
