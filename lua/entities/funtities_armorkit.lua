AddCSLuaFile()

ENT.PrintName = "Armor Kit" -- Set the name of the entity.
ENT.funModel = "models/items/battery.mdl" -- Sets the model of the entity.
ENT.funSound = "items/battery_pickup.wav" -- Sets the sound of the entity on use.

ENT.funMode = "armor" -- Sets the mode of the entity. ( health, armor, or hunger )
ENT.funAmount = 15 -- Sets the value given to the player upon use.
ENT.funLimit = 100 -- Sets the max value that player can receive from entity.

ENT.funChat = false -- Enable for chat message.
ENT.funChatMsg = "You have consumed some armor." -- What you want chat message to say.

-- General Information for Entity
ENT.Base = "funtities_base"
ENT.Category = "Fun Entities"
ENT.Purpose = "Consume for armor"
ENT.Spawnable = true
ENT.AdminSpawnable = true