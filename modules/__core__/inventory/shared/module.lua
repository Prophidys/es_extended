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

M('events')
M('class')
M('table')

Inventory = Extends(EventEmitter, 'Inventory')

function Inventory:constructor()
  self.items = {}
end

function Inventory:hasItem(name)
  return table.indexOf(self.items, name) ~= -1
end

function Inventory:getCount(name)
  if table.indexOf(self.items, name) ~= -1 then
    return self.items[name].count
  else
    return 0
  end
end

function Inventory:additem(name)
  return 0
end

function Inventory:removeItem(name)
  return 0
end
