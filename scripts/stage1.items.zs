import crafttweaker.item.IIngredient;

var STAGE = STAGES.one;

/*
var modIDs as string[] = [
];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage(STAGE, item);
    }
}
*/

var stage1Items as IIngredient[] = [
	<charcoalblock:charcoal_block>,
	<immersiveengineering:stone_decoration:10>,
	<immersiveengineering:stone_decoration_slab:10>,
	<immersiveengineering:storage_slab>,
	<immersiveengineering:tool>,
	<pickletweaks:coal_piece:1>,
	<pickletweaks:coal_piece>,
	<prospectors:prospector_lowest>,
	<teslacorelib:gear_stone>,

	/*
		Items by "type"
	*/
	//Ore
	<abyssalcraft:abycopore>,
	<abyssalcraft:abytinore>,
	<actuallyadditions:block_misc:3>,
	<immersiveengineering:ore>,
	<minecraft:coal_ore>,

	//Repair Kits
	<pickletweaks:repair_kit:1>,
	<pickletweaks:repair_kit:5>,
	<pickletweaks:repair_kit:13>,
	<pickletweaks:repair_kit:14>,
	<pickletweaks:repair_kit:15>,
	<pickletweaks:repair_kit>,

	//Bricks
	<betterwithaddons:bricks_stained:*>,
	<betterwithaddons:material:*>,
	<minecraft:brick_block>,
	<minecraft:stone_slab:4>,
	<quark:polished_netherrack:1>,
	<quark:polished_netherrack_bricks_slab>,
	<quark:polished_netherrack_bricks_stairs>,
	<quark:polished_netherrack_bricks_wall>,
	<quark:stone_andesite_bricks_slab>,
	<quark:stone_andesite_bricks_stairs>,
	<quark:stone_andesite_bricks_wall>,
	<quark:stone_diorite_bricks_slab>,
	<quark:stone_diorite_bricks_stairs>,
	<quark:stone_diorite_bricks_wall>,
	<quark:stone_granite_bricks_slab>,
	<quark:stone_granite_bricks_stairs>,
	<quark:stone_granite_bricks_wall>,
	<quark:world_stone_bricks:*>,
	<tconstruct:brownstone:3>,
	<tconstruct:brownstone_slab2:1>,
	<tconstruct:brownstone_slab2:2>,
	<tconstruct:brownstone_slab:3>,
	<tconstruct:brownstone_slab:4>,
	<tconstruct:brownstone_slab:5>,
	<tconstruct:brownstone_slab:6>,
	<tconstruct:brownstone_stairs_brick>,
	<tconstruct:brownstone_stairs_brick_cracked>,
	<tconstruct:brownstone_stairs_brick_fancy>,
	<tconstruct:brownstone_stairs_brick_small>,
	<tconstruct:brownstone_stairs_brick_square>,
	<tconstruct:brownstone_stairs_brick_triangle>,
	<tconstruct:deco_ground>,
	<tconstruct:deco_ground_slab>,
	<tconstruct:dried_brick_stairs>,
	<tconstruct:dried_clay:1>,
	<tconstruct:dried_clay_slab:1>,
	<tconstruct:mudbrick_stairs>,
	<traverse:blue_rock_bricks>,
	<traverse:blue_rock_bricks_chiseled>,
	<traverse:blue_rock_bricks_slab>,
	<traverse:blue_rock_bricks_stairs>,
	<traverse:red_rock_bricks>,
	<traverse:red_rock_bricks_chiseled>,
	<traverse:red_rock_bricks_slab>,
	<traverse:red_rock_bricks_stairs>,

	//Stairs
	<minecraft:acacia_stairs>,
	<minecraft:birch_stairs>,
	<minecraft:brick_stairs>,
	<minecraft:dark_oak_stairs>,
	<minecraft:jungle_stairs>,
	<minecraft:nether_brick_stairs>,
	<minecraft:oak_stairs>,
	<minecraft:purpur_stairs>,
	<minecraft:quartz_stairs>,
	<minecraft:red_sandstone_stairs>,
	<minecraft:sandstone_stairs>,
	<minecraft:spruce_stairs>,
	<minecraft:stone_stairs>,
	<primal:stairs_dirt>,
	<primal:stairs_ironwood>,
	<primal:stairs_mud>,
	<primal:stairs_path>,
	<quark:hardened_clay_tiles_stairs>,
	<quark:prismarine_bricks_stairs>,
	<quark:prismarine_dark_stairs>,
	<quark:stained_clay_tiles_black_stairs>,
	<quark:stained_clay_tiles_blue_stairs>,
	<quark:stained_clay_tiles_brown_stairs>,
	<quark:stained_clay_tiles_cyan_stairs>,
	<quark:stained_clay_tiles_gray_stairs>,
	<quark:stained_clay_tiles_green_stairs>,
	<quark:stained_clay_tiles_light_blue_stairs>,
	<quark:stained_clay_tiles_lime_stairs>,
	<quark:stained_clay_tiles_magenta_stairs>,
	<quark:stained_clay_tiles_orange_stairs>,
	<quark:stained_clay_tiles_pink_stairs>,
	<quark:stained_clay_tiles_purple_stairs>,
	<quark:stained_clay_tiles_red_stairs>,
	<quark:stained_clay_tiles_silver_stairs>,
	<quark:stained_clay_tiles_white_stairs>,
	<quark:stained_clay_tiles_yellow_stairs>,
	<quark:stone_andesite_stairs>,
	<quark:stone_diorite_stairs>,
	<quark:stone_granite_stairs>,
	<quark:stone_stairs>,
	<tconstruct:dried_clay_stairs>,
	<traverse:blue_rock_cobblestone_stairs>,
	<traverse:fir_stairs>,
	<traverse:red_rock_cobblestone_stairs>,

	//Fences and Doors
	<abyssalcraft:abydreadbrickfence>,
	<abyssalcraft:abyfence>,
	<abyssalcraft:cstonebrickfence>,
	<abyssalcraft:darkethaxiumbrickfence>,
	<abyssalcraft:dltfence>,
	<abyssalcraft:dreadbrickfence>,
	<abyssalcraft:drtfence>,
	<abyssalcraft:dsbfence>,
	<abyssalcraft:ethaxiumfence>,
	<minecraft:acacia_door>,
	<minecraft:acacia_fence>,
	<minecraft:acacia_fence_gate>,
	<minecraft:birch_door>,
	<minecraft:birch_fence>,
	<minecraft:birch_fence_gate>,
	<minecraft:dark_oak_door>,
	<minecraft:dark_oak_fence>,
	<minecraft:dark_oak_fence_gate>,
	<minecraft:fence>,
	<minecraft:fence_gate>,
	<minecraft:jungle_door>,
	<minecraft:jungle_fence>,
	<minecraft:jungle_fence_gate>,
	<minecraft:nether_brick_fence>,
	<minecraft:spruce_door>,
	<minecraft:spruce_fence>,
	<minecraft:spruce_fence_gate>,
	<minecraft:trapdoor>,
	<minecraft:wooden_door>,
	<natura:amaranth_fence>,
	<natura:amaranth_fence_gate>,
	<natura:bloodwood_fence>,
	<natura:bloodwood_fence_gate>,
	<natura:darkwood_fence>,
	<natura:darkwood_fence_gate>,
	<natura:eucalyptus_fence>,
	<natura:eucalyptus_fence_gate>,
	<natura:fusewood_fence>,
	<natura:fusewood_fence_gate>,
	<natura:ghostwood_fence>,
	<natura:ghostwood_fence_gate>,
	<natura:hopseed_fence>,
	<natura:hopseed_fence_gate>,
	<natura:maple_fence>,
	<natura:maple_fence_gate>,
	<natura:overworld_doors>,
	<natura:redwood_fence>,
	<natura:redwood_fence_gate>,
	<natura:sakura_fence>,
	<natura:sakura_fence_gate>,
	<natura:silverbell_fence>,
	<natura:silverbell_fence_gate>,
	<natura:tiger_fence>,
	<natura:tiger_fence_gate>,
	<natura:willow_fence>,
	<natura:willow_fence_gate>,
	<primal:fence:1>,
	<primal:fence:2>,
	<primal:fence:3>,
	<primal:fence>,
	<quark:nether_brick_fence_gate>,
	<rustic:fence_gate_ironwood>,
	<rustic:fence_gate_olive>,
	<rustic:fence_ironwood>,
	<rustic:fence_olive>,
	<rustic:ironwood_door>,
	<rustic:olive_door>,
	<tallgates:tall_gate:1>,
	<tallgates:tall_gate:2>,
	<tallgates:tall_gate:3>,
	<tallgates:tall_gate:4>,
	<tallgates:tall_gate:5>,
	<tallgates:tall_gate>,
	<traverse:fir_door>,
	<traverse:fir_fence>,
	<traverse:fir_fence_gate>,

	//Tools
	<abyssalcraft:dhoe>,
	<cyclicmagic:sandstone_hoe>,
	<minecraft:stone_hoe>,
	<minecraft:wooden_hoe>,
	<primal:flint_hoe>,

	//Torches
	<cyclicmagic:ender_torch>,
	<minecraft:torch>,
	<tconstruct:stone_torch>,

	//Beneath
	<beneath:teleporterbeneath>,
	<progressiontweaks:blank_teleporter>,

	/*
		Items by mod
	*/
	//Minecraft
	<minecraft:cake>,
	<minecraft:chest>,
	<minecraft:coal_block>,
	<minecraft:concrete:*>,
	<minecraft:concrete_powder:*>,
	<minecraft:crafting_table>,
	<minecraft:furnace>,
	<minecraft:item_frame>,
	<minecraft:ladder>,
	<minecraft:lit_pumpkin>,
	<minecraft:mushroom_stew>,
	<minecraft:stone_button>,
	<minecraft:tnt>,
	<minecraft:flower_pot>,
	<minecraft:wooden_button>,

	//Hunting Dimension
	<huntingdim:biome_changer:*>,
	<huntingdim:frame>,
	<huntingdim:portal>,

	//Iron Chests
	<ironchest:iron_chest:3>,
	<ironchest:wood_copper_chest_upgrade>,

	//Chisel & Bits
	<chiselsandbits:bit_bag>,
	<chiselsandbits:bittank>,
	<chiselsandbits:chisel_iron>,
	<chiselsandbits:chisel_stone>,
	<chiselsandbits:mirrorprint>,
	<chiselsandbits:negativeprint>,
	<chiselsandbits:positiveprint>,
	<chiselsandbits:tape_measure>,
	<chiselsandbits:wrench_wood>,

	//Chisel
	<chisel:andesite1:*>,
	<chisel:andesite2:*>,
	<chisel:andesite:*>,
	<chisel:basalt1:*>,
	<chisel:basalt2:1>,
	<chisel:basalt2:2>,
	<chisel:basalt2:3>,
	<chisel:basalt2:4>,
	<chisel:basalt2:5>,
	<chisel:basalt2:6>,
	<chisel:basalt2>,
	<chisel:basalt:*>,
	<chisel:block_charcoal1:*>,
	<chisel:block_charcoal2:*>,
	<chisel:block_charcoal:*>,
	<chisel:block_coal1:*>,
	<chisel:block_coal2:*>,
	<chisel:block_coal:*>,
	<chisel:blockbronze:*>,
	<chisel:blockcopper:*>,
	<chisel:blocktin:*>,
	<chisel:bricks1:*>,
	<chisel:bricks2:*>,
	<chisel:bricks:*>,
	<chisel:brownstone:*>,
	<chisel:chisel_iron>,
	<chisel:cobblestone1:*>,
	<chisel:cobblestone2:*>,
	<chisel:cobblestone:*>,
	<chisel:cobblestonemossy1:*>,
	<chisel:cobblestonemossy2:*>,
	<chisel:cobblestonemossy:*>,
	<chisel:concrete_black1:*>,
	<chisel:concrete_black2:*>,
	<chisel:concrete_black:*>,
	<chisel:concrete_blue1:*>,
	<chisel:concrete_blue2:*>,
	<chisel:concrete_blue:*>,
	<chisel:concrete_brown1:*>,
	<chisel:concrete_brown2:*>,
	<chisel:concrete_brown:*>,
	<chisel:concrete_cyan1:*>,
	<chisel:concrete_cyan2:*>,
	<chisel:concrete_cyan:*>,
	<chisel:concrete_gray1:*>,
	<chisel:concrete_gray2:*>,
	<chisel:concrete_gray:*>,
	<chisel:concrete_green1:*>,
	<chisel:concrete_green2:*>,
	<chisel:concrete_green:*>,
	<chisel:concrete_lightblue1:*>,
	<chisel:concrete_lightblue2:*>,
	<chisel:concrete_lightblue:*>,
	<chisel:concrete_lightgray1:*>,
	<chisel:concrete_lightgray2:*>,
	<chisel:concrete_lightgray:*>,
	<chisel:concrete_lime1:*>,
	<chisel:concrete_lime2:*>,
	<chisel:concrete_lime:*>,
	<chisel:concrete_magenta1:*>,
	<chisel:concrete_magenta2:*>,
	<chisel:concrete_magenta:*>,
	<chisel:concrete_orange1:*>,
	<chisel:concrete_orange2:*>,
	<chisel:concrete_orange:*>,
	<chisel:concrete_pink1:*>,
	<chisel:concrete_pink2:*>,
	<chisel:concrete_pink:*>,
	<chisel:concrete_purple1:*>,
	<chisel:concrete_purple2:*>,
	<chisel:concrete_purple:*>,
	<chisel:concrete_red1:*>,
	<chisel:concrete_red2:*>,
	<chisel:concrete_red:*>,
	<chisel:concrete_white1:*>,
	<chisel:concrete_white2:*>,
	<chisel:concrete_white:*>,
	<chisel:concrete_yellow1:*>,
	<chisel:concrete_yellow2:*>,
	<chisel:concrete_yellow:*>,
	<chisel:diorite1:*>,
	<chisel:diorite2:*>,
	<chisel:diorite:*>,
	<chisel:dirt:*>,
	<chisel:granite1:*>,
	<chisel:granite2:*>,
	<chisel:granite:*>,
	<chisel:hardenedclay1:*>,
	<chisel:hardenedclay2:*>,
	<chisel:hardenedclay:*>,
	<chisel:ice1:*>,
	<chisel:ice2:*>,
	<chisel:ice:*>,
	<chisel:icepillar:*>,
	<chisel:limestone1:*>,
	<chisel:limestone2:1>,
	<chisel:limestone2:2>,
	<chisel:limestone2:3>,
	<chisel:limestone2:4>,
	<chisel:limestone2:5>,
	<chisel:limestone2:6>,
	<chisel:limestone2>,
	<chisel:limestone:*>,
	<chisel:marble1:*>,
	<chisel:marble2:0>,
	<chisel:marble2:1>,
	<chisel:marble2:2>,
	<chisel:marble2:3>,
	<chisel:marble2:4>,
	<chisel:marble2:5>,
	<chisel:marble2:6>,
	<chisel:marble:*>,
	<chisel:marblepillar:*>,
	<chisel:offsettool>,
	<chisel:planks-acacia:*>,
	<chisel:planks-birch:*>,
	<chisel:planks-dark-oak:*>,
	<chisel:planks-jungle:*>,
	<chisel:planks-oak:*>,
	<chisel:planks-spruce:*>,
	<chisel:prismarine1:*>,
	<chisel:prismarine2:*>,
	<chisel:prismarine:*>,
	<chisel:sandstone-scribbles:*>,
	<chisel:sandstonered1:*>,
	<chisel:sandstonered2:*>,
	<chisel:sandstonered:*>,
	<chisel:sandstoneyellow1:*>,
	<chisel:sandstoneyellow2:*>,
	<chisel:sandstoneyellow:*>,
	<chisel:temple:*>,
	<chisel:templemossy:*>,

	//Rustic
	<rustic:andesite_pillar>,
	<rustic:barrel>,
	<rustic:book>,
	<rustic:cabinet>,
	<rustic:chair_acacia>,
	<rustic:chair_big_oak>,
	<rustic:chair_birch>,
	<rustic:chair_ironwood>,
	<rustic:chair_jungle>,
	<rustic:chair_oak>,
	<rustic:chair_olive>,
	<rustic:chair_spruce>,
	<rustic:crop_stake>,
	<rustic:crushing_tub>,
	<rustic:diorite_pillar>,
	<rustic:evaporating_basin>,
	<rustic:granite_pillar>,
	<rustic:rope>,
	<rustic:slate_pillar>,
	<rustic:stairs_ironwood>,
	<rustic:stairs_olive>,
	<rustic:stone_pillar>,
	<rustic:table_acacia>,
	<rustic:table_big_oak>,
	<rustic:table_birch>,
	<rustic:table_ironwood>,
	<rustic:table_jungle>,
	<rustic:table_oak>,
	<rustic:table_olive>,
	<rustic:table_spruce>,
	<rustic:vase>,

	//Abyssalcraft
	<abyssalcraft:abybutton>,
	<abyssalcraft:cchunk>,
	<abyssalcraft:ccluster2>,
	<abyssalcraft:ccluster3>,
	<abyssalcraft:ccluster4>,
	<abyssalcraft:ccluster5>,
	<abyssalcraft:ccluster6>,
	<abyssalcraft:ccluster7>,
	<abyssalcraft:ccluster8>,
	<abyssalcraft:ccluster9>,
	<abyssalcraft:charm>,
	<abyssalcraft:coralium>,
	<abyssalcraft:coraliumore>,
	<abyssalcraft:coraliumstone>,
	<abyssalcraft:corbone>,
	<abyssalcraft:corflesh>,
	<abyssalcraft:cpearl>,
	<abyssalcraft:crate>,
	<abyssalcraft:cstonebutton>,
	<abyssalcraft:decorativestatue:1>,
	<abyssalcraft:decorativestatue:2>,
	<abyssalcraft:decorativestatue:3>,
	<abyssalcraft:decorativestatue:4>,
	<abyssalcraft:decorativestatue:5>,
	<abyssalcraft:decorativestatue:6>,
	<abyssalcraft:decorativestatue>,
	<abyssalcraft:dltbutton>,
	<abyssalcraft:dsbutton>,
	<abyssalcraft:necronomicon>,
	<abyssalcraft:statue:1>,
	<abyssalcraft:statue:2>,
	<abyssalcraft:statue:3>,
	<abyssalcraft:statue:4>,
	<abyssalcraft:statue:5>,
	<abyssalcraft:statue:6>,
	<abyssalcraft:statue>,
	<abyssalcraft:stone>,

	//Actually Additions
	<actuallyadditions:block_fishing_net>,
	<actuallyadditions:block_misc:1>,
	<actuallyadditions:block_misc:2>,
	<actuallyadditions:block_misc>,
	<actuallyadditions:block_tiny_torch>,
	<actuallyadditions:item_axe_quartz>,
	<actuallyadditions:item_boots_quartz>,
	<actuallyadditions:item_chest_quartz>,
	<actuallyadditions:item_crafter_on_a_stick>,
	<actuallyadditions:item_dust:6>,
	<actuallyadditions:item_dust:7>,
	<actuallyadditions:item_helm_quartz>,
	<actuallyadditions:item_hoe_quartz>,
	<actuallyadditions:item_misc:5>,
	<actuallyadditions:item_pants_quartz>,
	<actuallyadditions:item_pickaxe_quartz>,
	<actuallyadditions:item_shovel_quartz>,
	<actuallyadditions:item_sword_quartz>,
	<actuallyadditions:quartz_paxel>,

	//Bibliocraft
	<bibliocraft:plumbline>,
	<bibliocraft:shelf:1>,
	<bibliocraft:shelf:2>,
	<bibliocraft:shelf:3>,
	<bibliocraft:shelf:4>,
	<bibliocraft:shelf:5>,
	<bibliocraft:shelf:6>,
	<bibliocraft:shelf>,
	<bibliocraft:toolrack:*>,

	//Dark Utils
	<darkutils:charm_gluttony>,
	<darkutils:charm_sleep>,
	<darkutils:slime_dyed:*>,

	//Astral Sorcery in Stage 1
	<astralsorcery:blockaltar>,
	<astralsorcery:blockmarble:1>,
	<astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:3>,
	<astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:5>,
	<astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble>,
	<astralsorcery:blockmarbleslab>,
	<astralsorcery:blockmarblestairs>,
	<astralsorcery:itemcraftingcomponent:5>,
	<astralsorcery:itemcraftingcomponent>,
	<astralsorcery:itemjournal>,

	//Ceramics
	<ceramics:channel>,
	<ceramics:clay_barrel>,
	<ceramics:clay_barrel_stained:*>,
	<ceramics:clay_barrel_stained_extension:*>,
	<ceramics:clay_barrel_unfired:2>,
	<ceramics:clay_barrel_unfired:3>,
	<ceramics:clay_barrel_unfired>,
	<ceramics:clay_boots>,
	<ceramics:clay_bucket>,
	<ceramics:clay_bucket_block>,
	<ceramics:clay_chestplate>,
	<ceramics:clay_hard:1>,
	<ceramics:clay_hard:2>,
	<ceramics:clay_hard:4>,
	<ceramics:clay_hard:5>,
	<ceramics:clay_hard:6>,
	<ceramics:clay_hard>,
	<ceramics:clay_helmet>,
	<ceramics:clay_leggings>,
	<ceramics:clay_shears>,
	<ceramics:clay_slab:1>,
	<ceramics:clay_slab:2>,
	<ceramics:clay_slab:4>,
	<ceramics:clay_slab:5>,
	<ceramics:clay_slab:6>,
	<ceramics:clay_slab>,
	<ceramics:clay_wall:1>,
	<ceramics:clay_wall:2>,
	<ceramics:clay_wall:3>,
	<ceramics:clay_wall:5>,
	<ceramics:clay_wall:6>,
	<ceramics:clay_wall:7>,
	<ceramics:clay_wall>,
	<ceramics:dark_bricks_stairs>,
	<ceramics:dragon_bricks_stairs>,
	<ceramics:faucet>,
	<ceramics:lava_bricks_stairs>,
	<ceramics:marine_bricks_stairs>,
	<ceramics:porcelain:1>,
	<ceramics:porcelain:2>,
	<ceramics:porcelain:3>,
	<ceramics:porcelain:4>,
	<ceramics:porcelain:5>,
	<ceramics:porcelain:6>,
	<ceramics:porcelain:7>,
	<ceramics:porcelain:8>,
	<ceramics:porcelain:9>,
	<ceramics:porcelain:10>,
	<ceramics:porcelain:11>,
	<ceramics:porcelain:12>,
	<ceramics:porcelain:13>,
	<ceramics:porcelain:14>,
	<ceramics:porcelain:15>,
	<ceramics:porcelain>,
	<ceramics:porcelain_barrel:*>,
	<ceramics:porcelain_barrel_extension:*>,
	<ceramics:porcelain_bricks_stairs>,
	<ceramics:rainbow_bricks_stairs>,
	<ceramics:rainbow_clay:1>,
	<ceramics:rainbow_clay:2>,
	<ceramics:rainbow_clay:3>,
	<ceramics:rainbow_clay:4>,
	<ceramics:rainbow_clay:5>,
	<ceramics:rainbow_clay:6>,
	<ceramics:rainbow_clay:7>,
	<ceramics:rainbow_clay>,
	<ceramics:unfired_clay:1>,
	<ceramics:unfired_clay:8>,
	<ceramics:unfired_clay:9>,

	//Tinkers'
	<tcomplement:porcelain_casting:1>,
	<tconstruct:channel>,
	<tconstruct:edible:3>,
	<tconstruct:edible:33>,
	<tconstruct:faucet>,
	<tconstruct:slime:3>,
	<tconstruct:slime_boots:1>,
	<tconstruct:slime_boots:2>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots:4>,
	<tconstruct:slime_boots>,
	<tconstruct:slime_channel:3>,
	<tconstruct:slime_congealed:3>,
	<tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
	<tconstruct:firewood>,
	<tconstruct:firewood_slab>,
	<tconstruct:materials:1>,
	<tconstruct:materials:2>,
	<tconstruct:tooltables:*>,
	<tconstruct:seared:1>,
	<tconstruct:seared:2>,
	<tconstruct:seared_slab:1>,
	<tconstruct:seared_slab:2>,
	<tconstruct:toolforge>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 1 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "mekanism:basicblock", Count: 1 as byte, Damage: 13 as short}}),
	<tconstruct:seared>,
	<tconstruct:seared_slab>,

	//Primal Core
	<primal:drain_carbonate_flag>,
	<primal:drain_ferro_flag>,
	<primal:drain_mud>,
	<primal:drain_schist_green>,
	<primal:drain_scoria>,
	<primal:drain_stonebrick>,
	<primal:drain_thatch>,
	<primal:grate_acacia>,
	<primal:grate_bigoak>,
	<primal:grate_birch>,
	<primal:grate_ironwood>,
	<primal:grate_jungle>,
	<primal:grate_lacquer>,
	<primal:grate_oak>,
	<primal:grate_spruce>,
	<primal:grate_thatch>,
	<primal:storage_crate:1>,
	<primal:storage_crate:2>,
	<primal:storage_crate:3>,
	<primal:storage_crate:4>,
	<primal:storage_crate:5>,
	<primal:storage_crate:6>,
	<primal:storage_crate:7>,
	<primal:storage_crate:8>,
	<primal:storage_crate:9>,
	<primal:storage_crate>,

	//Content Tweaker
	<materialpart:aquamarine:ore_minecraft_stone>,
	<materialpart:bronze:beam>,
	<materialpart:bronze:bolt>,
	<materialpart:copper:beam>,
	<materialpart:copper:bolt>,
	<materialpart:tin:beam>,
	<materialpart:tin:bolt>,

	//Better With Mods
	<betterwithaddons:adobe:1>,
	<betterwithaddons:adobe:3>,
	<betterwithaddons:adobe:4>,
	<betterwithaddons:adobe:5>,
	<betterwithaddons:adobe:6>,
	<betterwithaddons:adobe:7>,
	<betterwithaddons:adobe:8>,
	<betterwithaddons:adobe:9>,
	<betterwithaddons:adobe:10>,
	<betterwithaddons:adobe:11>,
	<betterwithaddons:adobe:12>,
	<betterwithaddons:adobe:13>,
	<betterwithaddons:adobe:14>,
	<betterwithaddons:adobe:15>,
	<betterwithaddons:adobe>,
	<betterwithaddons:aqueduct:1>,
	<betterwithaddons:aqueduct:2>,
	<betterwithaddons:aqueduct:3>,
	<betterwithaddons:aqueduct:4>,
	<betterwithaddons:aqueduct:5>,
	<betterwithaddons:aqueduct:6>,
	<betterwithaddons:aqueduct:7>,
	<betterwithaddons:aqueduct:8>,
	<betterwithaddons:aqueduct:9>,
	<betterwithaddons:aqueduct:10>,
	<betterwithaddons:aqueduct:*>,
	<betterwithaddons:bag:1>,
	<betterwithaddons:bag:2>,
	<betterwithaddons:bag:3>,
	<betterwithaddons:bag:4>,
	<betterwithaddons:bag:5>,
	<betterwithaddons:bag:8>,
	<betterwithaddons:bag:9>,
	<betterwithaddons:bag:10>,
	<betterwithaddons:bag:13>,
	<betterwithaddons:bag:*>,
	<betterwithaddons:bag>,
	<betterwithaddons:bolt:1>,
	<betterwithaddons:bolt:6>,
	<betterwithaddons:bolt>,
	<betterwithaddons:brick_stained:1>,
	<betterwithaddons:brick_stained:2>,
	<betterwithaddons:brick_stained:3>,
	<betterwithaddons:brick_stained:4>,
	<betterwithaddons:brick_stained:5>,
	<betterwithaddons:brick_stained:6>,
	<betterwithaddons:brick_stained:7>,
	<betterwithaddons:brick_stained:8>,
	<betterwithaddons:brick_stained:9>,
	<betterwithaddons:brick_stained:10>,
	<betterwithaddons:brick_stained:11>,
	<betterwithaddons:brick_stained:12>,
	<betterwithaddons:brick_stained:13>,
	<betterwithaddons:brick_stained:14>,
	<betterwithaddons:brick_stained:15>,
	<betterwithaddons:brick_stained>,
	<betterwithaddons:chute>,
	<betterwithaddons:crate:1>,
	<betterwithaddons:crate:2>,
	<betterwithaddons:crate:3>,
	<betterwithaddons:crate:4>,
	<betterwithaddons:crate:5>,
	<betterwithaddons:crate:6>,
	<betterwithaddons:crate:7>,
	<betterwithaddons:crate:8>,
	<betterwithaddons:crate:9>,
	<betterwithaddons:crate:10>,
	<betterwithaddons:crate:11>,
	<betterwithaddons:crate:*>,
	<betterwithaddons:crate>,
	<betterwithaddons:food_beetroot_cooked>,
	<betterwithaddons:food_carrot_cooked>,
	<betterwithaddons:food_egg_cooked>,
	<betterwithaddons:food_meatballs>,
	<betterwithaddons:food_potato_cooked>,
	<betterwithaddons:inverted_gearbox>,
	<betterwithaddons:japanmat:8>,
	<betterwithaddons:japanmat:9>,
	<betterwithaddons:japanmat:10>,
	<betterwithaddons:japanmat:11>,
	<betterwithaddons:japanmat:35>,
	<betterwithaddons:japanmat:36>,
	<betterwithaddons:leaves_luretree>,
	<betterwithaddons:log_luretree>,
	<betterwithaddons:log_luretree_face>,
	<betterwithaddons:loom>,
	<betterwithaddons:sapling_luretree>,
	<betterwithaddons:scaffold>,
	<betterwithaddons:spindle>,
	<betterwithaddons:thorn_rose>,
	<betterwithaddons:weight_stone>,
	<betterwithaddons:weight_wood>,
	<betterwithmods:aesthetic:1>,
	<betterwithmods:aesthetic:4>,
	<betterwithmods:aesthetic:5>,
	<betterwithmods:aesthetic:9>,
	<betterwithmods:aesthetic>,
	<betterwithmods:anchor>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:axle_generator:2>,
	<betterwithmods:axle_generator>,
	<betterwithmods:bamboo_chime:*>,
	<betterwithmods:bark:1>,
	<betterwithmods:bark:2>,
	<betterwithmods:bark:3>,
	<betterwithmods:bark:4>,
	<betterwithmods:bark:5>,
	<betterwithmods:bark:6>,
	<betterwithmods:bark:7>,
	<betterwithmods:bark:8>,
	<betterwithmods:bark>,
	<betterwithmods:bellows>,
	<betterwithmods:blood_leaves>,
	<betterwithmods:blood_log>,
	<betterwithmods:blood_sapling>,
	<betterwithmods:candle:1>,
	<betterwithmods:candle:2>,
	<betterwithmods:candle:3>,
	<betterwithmods:candle:4>,
	<betterwithmods:candle:5>,
	<betterwithmods:candle:6>,
	<betterwithmods:candle:7>,
	<betterwithmods:candle:8>,
	<betterwithmods:candle:9>,
	<betterwithmods:candle:10>,
	<betterwithmods:candle:11>,
	<betterwithmods:candle:12>,
	<betterwithmods:candle:13>,
	<betterwithmods:candle:14>,
	<betterwithmods:candle:15>,
	<betterwithmods:candle>,
	<betterwithmods:chicken_soup>,
	<betterwithmods:chocolate>,
	<betterwithmods:chowder>,
	<betterwithmods:cooking_pot:1>,
	<betterwithmods:cooking_pot>,
	<betterwithmods:donut>,
	<betterwithmods:grate:*>,
	<betterwithmods:hearty_stew>,
	<betterwithmods:hemp>,
	<betterwithmods:kibble>,
	<betterwithmods:material:10>,
	<betterwithmods:material:11>,
	<betterwithmods:material:12>,
	<betterwithmods:material:13>,
	<betterwithmods:material:19>,
	<betterwithmods:material:21>,
	<betterwithmods:material:22>,
	<betterwithmods:material:24>,
	<betterwithmods:material:28>,
	<betterwithmods:material:41>,
	<betterwithmods:platform>,
	<betterwithmods:rustic_compat_corner:1>,
	<betterwithmods:rustic_compat_corner:2>,
	<betterwithmods:rustic_compat_corner>,
	<betterwithmods:rustic_compat_moulding:1>,
	<betterwithmods:rustic_compat_moulding:2>,
	<betterwithmods:rustic_compat_moulding>,
	<betterwithmods:rustic_compat_siding:1>,
	<betterwithmods:rustic_compat_siding:2>,
	<betterwithmods:rustic_compat_siding>,
	<betterwithmods:saw>,
	<betterwithmods:screw_pump>,
	<betterwithmods:single_machine:1>,
	<betterwithmods:single_machine:3>,
	<betterwithmods:slats:*>,
	<betterwithmods:stone_corner:2>,
	<betterwithmods:stone_corner:3>,
	<betterwithmods:stone_corner:4>,
	<betterwithmods:stone_corner:5>,
	<betterwithmods:stone_corner>,
	<betterwithmods:stone_moulding:2>,
	<betterwithmods:stone_moulding:3>,
	<betterwithmods:stone_moulding:4>,
	<betterwithmods:stone_moulding:5>,
	<betterwithmods:stone_moulding>,
	<betterwithmods:stone_siding:2>,
	<betterwithmods:stone_siding:3>,
	<betterwithmods:stone_siding:4>,
	<betterwithmods:stone_siding:5>,
	<betterwithmods:stone_siding>,
	<betterwithmods:unfired_pottery:1>,
	<betterwithmods:unfired_pottery:3>,
	<betterwithmods:unfired_pottery>,
	<betterwithmods:vase:*>,
	<betterwithmods:wicker>,
	<betterwithmods:wood_bench:1>,
	<betterwithmods:wood_bench:2>,
	<betterwithmods:wood_bench:3>,
	<betterwithmods:wood_bench:4>,
	<betterwithmods:wood_bench:5>,
	<betterwithmods:wood_bench>,
	<betterwithmods:wood_corner:1>,
	<betterwithmods:wood_corner:2>,
	<betterwithmods:wood_corner:3>,
	<betterwithmods:wood_corner:4>,
	<betterwithmods:wood_corner:5>,
	<betterwithmods:wood_corner>,
	<betterwithmods:wood_moulding:1>,
	<betterwithmods:wood_moulding:2>,
	<betterwithmods:wood_moulding:3>,
	<betterwithmods:wood_moulding:4>,
	<betterwithmods:wood_moulding:5>,
	<betterwithmods:wood_moulding>,
	<betterwithmods:wood_siding:1>,
	<betterwithmods:wood_siding:2>,
	<betterwithmods:wood_siding:3>,
	<betterwithmods:wood_siding:4>,
	<betterwithmods:wood_siding:5>,
	<betterwithmods:wood_siding>,
	<betterwithmods:wooden_axle>,
	<betterwithmods:wooden_broken_gearbox>,
	<betterwithmods:wooden_gearbox>,

	//Natura
	<natura:colored_grass:1>,
	<natura:colored_grass:2>,
	<natura:colored_grass>,
	<natura:colored_grass_slab:1>,
	<natura:colored_grass_slab:2>,
	<natura:colored_grass_slab>,

	//Geolosys
	<geolosys:cluster:2>,
	<geolosys:cluster:3>,
	<geolosys:field_manual>,
	<geolosys:ore:2>,
	<geolosys:ore:3>,
	<geolosys:ore:4>,
	<geolosys:ore:5>,
	<geolosys:ore_sample:2>,
	<geolosys:ore_sample:3>,
	<geolosys:ore_sample:4>,
	<geolosys:ore_sample:5>,
	<geolosys:ore_sample_vanilla>,
	<geolosys:ore_vanilla>,

	//Primal Tech
	<primal_tech:stone_mallet>,
	<primal_tech:stone_anvil>,

	//Dung Pipes
	<dungpipe:dung_pipe>,
	<dungpipe:sewer_pipe>,

	//Cyclic
	<cyclicmagic:plate_launch_large>,
	<cyclicmagic:plate_launch_small>,
	<cyclicmagic:sandstone_axe>,
	<cyclicmagic:sandstone_pickaxe>,
	<cyclicmagic:sandstone_spade>,
	<cyclicmagic:tool_harvest_leaves>,

	//Compressed
	<overloaded:compressed_cobblestone:*>,
	<overloaded:compressed_dirt:*>,
	<overloaded:compressed_gravel:*>,
	<overloaded:compressed_sand:*>,
	<overloaded:compressed_stone:*>,

	//Quark
	<quark:acacia_trapdoor>,
	<quark:birch_trapdoor>,
	<quark:candle:*>,
	<quark:dark_oak_trapdoor>,
	<quark:hardened_clay_tiles>,
	<quark:hardened_clay_tiles_slab>,
	<quark:jungle_trapdoor>,
	<quark:polished_stone>,
	<quark:sandy_bricks>,
	<quark:spruce_trapdoor>,
	<quark:stained_clay_tiles:*>,
	<quark:stained_clay_tiles_black_slab>,
	<quark:stained_clay_tiles_blue_slab>,
	<quark:stained_clay_tiles_brown_slab>,
	<quark:stained_clay_tiles_cyan_slab>,
	<quark:stained_clay_tiles_gray_slab>,
	<quark:stained_clay_tiles_green_slab>,
	<quark:stained_clay_tiles_light_blue_slab>,
	<quark:stained_clay_tiles_lime_slab>,
	<quark:stained_clay_tiles_magenta_slab>,
	<quark:stained_clay_tiles_orange_slab>,
	<quark:stained_clay_tiles_pink_slab>,
	<quark:stained_clay_tiles_purple_slab>,
	<quark:stained_clay_tiles_red_slab>,
	<quark:stained_clay_tiles_silver_slab>,
	<quark:stained_clay_tiles_white_slab>,
	<quark:stained_clay_tiles_yellow_slab>,
	<quark:sturdy_stone>,

	//Spartan Shields
	<spartanshields:shield_basic_bronze>,
	<spartanshields:shield_basic_copper>,
	<spartanshields:shield_basic_tin>
];

for item in stage1Items {
	mods.ItemStages.addItemStage(STAGE, item);
}
