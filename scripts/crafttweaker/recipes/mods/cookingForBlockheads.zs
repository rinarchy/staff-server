/*
    SkyFactory 4 Cooking For Blockheads Recipe Script

    This script handles the recipes for Cooking For Blockheads.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
	<cookingforblockheads:cow_jar>: {
	  	Utils.genRecipeName(stages.pacifist, <cookingforblockheads:cow_jar>): [
	  		[
	  			[<minecraft:glass_pane>, <minecraft:anvil>, <minecraft:glass_pane>],
	  			[<minecraft:glass_pane>, <animalcrops:seeds>.withTag({entity: "minecraft:cow"}), <minecraft:glass_pane>],
	  			[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]
	  		]
	  	]
	}
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
