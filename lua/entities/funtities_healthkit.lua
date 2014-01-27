AddCSLuaFile()

ENT.PrintName = "Health Kit" -- Set the name of the entity.
ENT.funModel = "models/items/healthkit.mdl" -- Sets the model of the entity.
ENT.funSound = "items/smallmedkit1.wav" -- Sets the sound of the entity on use.

ENT.funMode = "health" -- Sets the mode of the entity. ( health, armor, or hunger )
ENT.funAmount = 15 -- Sets the value given to the player upon use.
ENT.funLimit = 100 -- Sets the max value that player can receive from entity.

ENT.funChat = false -- Enable for chat message.
ENT.funChatMsg = "You have consumed some health." -- What you want chat message to say.

-- General Information for Entity
ENT.Base = "funtities_base"
ENT.Category = "Fun Entities"
ENT.Purpose = "Consume for health"
ENT.Spawnable = true
ENT.AdminSpawnable = true