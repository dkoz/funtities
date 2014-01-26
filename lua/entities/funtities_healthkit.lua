AddCSLuaFile()

ENT.PrintName = "Health Kit" -- Set the name of the entity.
ENT.funModel = "models/items/healthkit.mdl" -- Sets the model of the entity.
ENT.funSound = "items/smallmedkit1.wav" -- Sets the sound of the entity on use.
ENT.funAmount = 15 -- Sets the value given to the player upon use.
ENT.funMode = false -- Enable to give the user armor, disable to give the user health.

-- General Information for Entity
ENT.Base = "funtities_base"
ENT.Category = "Fun Entities"
ENT.Purpose = "Consume for health"
ENT.Information = "Gives you health for consuming."
ENT.Spawnable = true
ENT.AdminSpawnable = true