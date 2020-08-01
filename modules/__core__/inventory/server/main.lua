-- Copyright (c) Jérémie N'gadi
--
-- All rights reserved.
--
-- Even if 'All rights reserved' is very clear :
--
--   You shall not use any piece of this software in a commercial product / service
--   You shall not resell this software
--   You shall not provide any facility to install this particular software in a commercial product / service
--   If you redistribute this software, you must link to ORIGINAL repository at https://github.com/ESX-Org/es_extended
--   This copyright should appear in every part of the project code

M('command')

local giveItemCommand = Command("giveitem", "admin", "Add a item to a player")
giveItemCommand:addArgument("role", "string", "The role to add")
giveItemCommand:addArgument("targetPlayer", "player", "The player to give item to")
giveItemCommand:setRconAllowed(true)

giveItemCommand:setHandler(function(player, args)
  local role = args.role
  local targetPlayer = args.targetPlayer

  targetPlayer:addIventory(role)
end)

local clearInventoryCommand = Command("clearinventory", "admin", "Clear inventory from a player")
clearInventoryCommand:addArgument("targetPlayer", "player", "The player to delete the role from")
clearInventoryCommand:setRconAllowed(true)

clearInventoryCommand:setHandler(function(player, args)
  local role = args.role
  local targetPlayer = args.targetPlayer

  targetPlayer:clearInventory(role)
end)

giveItemCommand:register()
clearInventoryCommand:register()