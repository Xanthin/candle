-- Boilerplate to support localized strings if intllib mod is installed.

local S
if (minetest.get_modpath("intllib")) then
      dofile(minetest.get_modpath("intllib").."/intllib.lua")
      S = intllib.Getter(minetest.get_current_modname())
      else
      S = function ( s ) return s end
end

--The Blocks

minetest.register_node("candle:basiccandle", {
	drop = 'candle:basiccandle',
	description = S("Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candle:teacandle", {
	drop = 'candle:teacandle',
	description = S("Tea Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"teacandle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candle:fatcandle", {
	drop = 'candle:fatcandle',
	description = S("Fat Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"fatcandle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candle:chandelier", {
	drop = 'candle:chandelier',
	description = S("Chandelier"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:waxystuff", {
	drop = 'candle:waxystuff',
	description = S("Waxy Stuff"),
	drawtype = "raillike",
	sunlight_propogates=true,
	tiles = {"waxystuff.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
})

minetest.register_node("candle:candelabra", {
	drop = 'candle:candelabra',
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
	output = "candle:basiccandle 2",
	recipe = {
		{'', 'default:papyrus', ''},
		{'candle:waxystuff', 'default:papyrus', 'candle:waxystuff'},
		{'candle:waxystuff', 'default:papyrus', 'candle:waxystuff'},
	}
})

minetest.register_craft({
	output = "candle:teacandle 2",
	recipe = {
		{'', '', ''},
		{'', 'default:papyrus', ''},
		{'candle:waxystuff', 'candle:waxystuff', 'candle:waxystuff'},
	}
})

minetest.register_craft({
	output = "candle:fatcandle 2",
	recipe = {
		{'', 'default:papyrus', ''},
		{'candle:waxystuff', 'candle:waxystuff', 'candle:waxystuff'},
		{'candle:waxystuff', 'candle:waxystuff', 'candle:waxystuff'},
	}
})

minetest.register_craft({
	output = "candle:chandelier 1",
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'candle:basiccandle', 'default:steel_ingot', 'candle:basiccandle'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = "candle:waxystuff 4",
	recipe = {
		{'', '', ''},
		{'', 'default:leaves', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = "candle:waxystuff 4",
	recipe = {
		{'', '', ''},
		{'', 'bees:honey_comb', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = "candle:candelabra 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
