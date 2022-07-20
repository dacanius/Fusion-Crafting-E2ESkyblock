-- This file contains configuration for the fusioncrafter

local config = {}

-- Specify the inventories here
--
-- Keys:
--   input:     Inventory where items are input into the autocraftin system
--   injectors: Inventory where items for the Fusion Crafting Injectors should be put
--   core:      Inventory where items for the Fusion Crafting Core should be put
--   output:    Inventory where items should be put after crafting is finished
--   result:    Inventory where items go after the fusion crafting finished
--
-- Values:
--   0: down
--   1: up
--   2: north
--   3: south
--   4: west
--   5: east
--
--   Hint: If you have waila just press Shift while
--     looking at the side and it'll show the value
config.inventories = {
  input = 3,
  result = 2,
  injectors = 5,
  core = 4,
  output = 1
}

-- Specify recipes here
--
-- Foramt:
-- {
--   input = {  -- Items needed to craft; This includes the item put into the core
--     <item id> = <item amount>,
--     <item id> = <item amount>,
--     ...
--   },
--   core = <item id>,  -- Item to be put into the fusion crafting core
--   output = {  -- Items that result from the crafting
--     <item id> = <item amount>,
--     <item id> = <item amount>,
--     ...
--   }
-- }
--
-- Hint: To display item id's press F3+H
config.recipes = {
  {
    output = { ["draconicevolution:draconic_block"] = 4 },
    input = {
      ["draconicevolution:draconic_core"] = 4,
      ["enderio:item_material:20"] = 1,
      ["botania:manaresource:9"] = 1,
      ["enderio:item_material:37"] = 1,
      ["draconicevolution:dragon_heart"] = 1,
      ["draconicevolution:draconium_block"] = 1
    },
    core = "draconicevolution:draconium_block"
  },
  {
    output = { ["draconicevolution:awakened_core"] = 1 },
    input = {
      ["draconicevolution:draconic_ingot"] = 5,
      ["draconicevolution:wyvern_core"] = 4,
      ["minecraft:nether_star"] = 1
    },
    core = "minecraft:nether_star"
  },
  {
    output = { ["draconicevolution:energy_crystal"] = 4 },  -- Draconic energy relay crystal
    input = {
      ["minecraft:diamond"] = 4,
      ["draconicevolution:wyvern_energy_core"] = 4,
      ["draconicevolution:wyvern_core"] = 1,
      ["draconicevolution:energy_crystal"] = 1
    },
    core = "draconicevolution:energy_crystal"
  },
  {
    output = { ["draconicevolution:crafting_injector"] = 1 },  -- Wyvern crafting injector
    input = {
      ["draconicevolution:wyvern_core"] = 1,
      ["minecraft:diamond"] = 4,
      ["draconicevolution:draconium_block"] = 1,
      ["draconicevolution:draconic_core"] = 2,
      ["draconicevolution:crafting_injector"] = 1
    },
    core = "draconicevolution:crafting_injector"
  },
  {
    output = { ["draconicevolution:crafting_injector"] = 1 },  -- Draconic crafting injector
    input = {
      ["draconicevolution:wyvern_core"] = 2,
      ["minecraft:diamond"] = 4,
      ["draconicevolution:draconic_block"] = 1,
      ["draconicevolution:crafting_injector"] = 1
    },
    core = "draconicevolution:crafting_injector"
  },
  {
    output = { ["draconicevolution:crafting_injector"] = 1 },  -- Chaotic crafting injector
    input = {
      ["draconicevolution:chaotic_core"] = 1,
      ["minecraft:diamond"] = 4,
      ["minecraft:dragon_egg"] = 1,
      ["draconicevolution:crafting_injector"] = 1
    },
    core = "draconicevolution:crafting_injector"
  },
  {
    output = { ["draconicevolution:crafting_injector"] = 1 },  -- Chaotic Core
    input = {
      ["draconicevolution:draconic_core"] = 4,
      ["draconicevolution:draconic_ingot"] = 4,
      ["draconicevolution:chaos_shard"] = 1
    },
    core = "draconicevolution:chaos_shard"
  },
}

return config
