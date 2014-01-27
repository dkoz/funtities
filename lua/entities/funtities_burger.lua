AddCSLuaFile()

-- This is an example DarkRP HungerMod entity.
-- Will only work on DarkRP server with HungerMod enabled.

ENT.PrintName = "Burger" -- Set the name of the entity.
ENT.funModel = "models/food/burger.mdl" -- Sets the model of the entity.
ENT.funSound = "" -- Sets the sound of the entity on use.

ENT.funMode = "hunger" -- Sets the mode of the entity. ( health, armor, or hunger )
ENT.funAmount = 15 -- Sets the value given to the player upon use.

ENT.funChat = false -- Enable for chat message.
ENT.funChatMsg = "You have consumed some health." -- What you want chat message to say.

-- General Information for Entity
ENT.Base = "funtities_base"
ENT.Category = "Fun Entities"
ENT.Purpose = "Consume for energy"
ENT.Spawnable = true
ENT.AdminSpawnable = true