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
	description = S("Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candle:teacandle", {
	description = S("Tea Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"teacandle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candle:fatcandle", {
	description = S("Fat Candle"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"fatcandle.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=8
})

minetest.register_node("candle:chandelier", {
	description = S("Chandelier"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

-- new items
minetest.register_node("candle:chandelier_gold", {
	description = S("Chandelier Gold"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier_gold.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:chandelier_silver", {
	description = S("Chandelier Silver"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier_silver.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:chandelier_mithril", {
	description = S("Chandelier Mithril"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier_mithril.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:chandelier_bronze", {
	description = S("Chandelier Bronze"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier_bronze.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:chandelier_iron", {
	description = S("Chandelier Iron"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"chandelier_iron.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:waxystuff", {
	description = S("Waxy Stuff"),
	drawtype = "raillike",
	sunlight_propogates=true,
	tiles = {"waxystuff.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
})

minetest.register_node("candle:candelabra", {
	description = S("Candelabra"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

-- neues Item nach Vorlage
minetest.register_node("candle:candelabra_gold", {
	description = S("Candelabra Gold"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra_gold.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:candelabra_silver", {
	description = S("Candelabra Silver"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra_silver.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:candelabra_mithril", {
	description = S("Candelabra Mithril"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra_mithril.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:candelabra_bronze", {
	description = S("Candelabra Bronze"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra_bronze.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:candelabra_iron", {
	description = S("Candelabra Iron"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra_iron.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

minetest.register_node("candle:candelabra_glass", {
	description = S("Candelabra Glass"),
	drawtype = "plantlike",
	sunlight_propogates=true,
	tiles = {"candelabra_glass.png"},
	walkable=false,
	groups={level=1,oddly_breakable_by_hand=1},
	light_source=14
})

--The Crafting Recipes

minetest.register_craft({
	output = "candle:basiccandle 2",
	recipe = {
		{'', 'farming:string', ''},
		{'candle:waxystuff', 'farming:string', 'candle:waxystuff'},
		{'candle:waxystuff', 'farming:string', 'candle:waxystuff'},
	}
})

minetest.register_craft({
	output = "candle:teacandle 2",
	recipe = {
		{'', '', ''},
		{'', 'farming:string', ''},
		{'candle:waxystuff', 'candle:waxystuff', 'candle:waxystuff'},
	}
})

minetest.register_craft({
	output = "candle:fatcandle 2",
	recipe = {
		{'', 'farming:string', ''},
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

--neues Rezept nach Vorlage
minetest.register_craft({
	output = "candle:chandelier_gold 1",
	recipe = {
		{'', 'default:gold_ingot', ''},
		{'candle:basiccandle', 'default:gold_ingot', 'candle:basiccandle'},
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = "candle:chandelier_silver 1",
	recipe = {
		{'', 'moreores:silver_ingot', ''},
		{'candle:basiccandle', 'moreores:silver_ingot', 'candle:basiccandle'},
		{'moreores:silver_ingot', 'moreores:silver_ingot', 'moreores:silver_ingot'},
	}
})

minetest.register_craft({
	output = "candle:chandelier_mithril 1",
	recipe = {
		{'', 'moreores:mithril_ingot', ''},
		{'candle:basiccandle', 'moreores:mithril_ingot', 'candle:basiccandle'},
		{'moreores:mithril_ingot', 'moreores:mithril_ingot', 'moreores:mithril_ingot'},
	}
})

minetest.register_craft({
	output = "candle:chandelier_bronze 1",
	recipe = {
		{'', 'default:bronze_ingot', ''},
		{'candle:basiccandle', 'default:bronze_ingot', 'candle:basiccandle'},
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
	}
})

minetest.register_craft({
	output = "candle:chandelier_iron 1",
	recipe = {
		{'', 'default:iron_lump', ''},
		{'candle:basiccandle', 'default:iron_lump', 'candle:basiccandle'},
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
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
	output = "candle:candelabra 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

-- recipes for the new items
minetest.register_craft({
	output = "candle:candelabra_gold 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'default:gold_ingot', ''},
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
	}
})

minetest.register_craft({
	output = "candle:candelabra_silver 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'moreores:silver_ingot', ''},
		{'moreores:silver_ingot', 'moreores:silver_ingot', 'moreores:silver_ingot'},
	}
})

minetest.register_craft({
	output = "candle:candelabra_mithril 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'moreores:mithril_ingot', ''},
		{'moreores:mithril_ingot', 'moreores:mithril_ingot', 'moreores:mithril_ingot'},
	}
})

minetest.register_craft({
	output = "candle:candelabra_bronze 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'default:bronze_ingot', ''},
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
	}
})

minetest.register_craft({
	output = "candle:candelabra_iron 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'default:iron_lump', ''},
		{'default:iron_lump', 'default:iron_lump', 'default:iron_lump'},
	}
})

minetest.register_craft({
	output = "candle:candelabra_glass 1",
	recipe = {
		{'candle:basiccandle', 'candle:basiccandle', 'candle:basiccandle'},
		{'', 'default:glass', ''},
		{'default:glass', 'default:glass', 'default:glass'},
	}
})