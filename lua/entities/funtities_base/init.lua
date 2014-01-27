AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( "shared.lua" )

function ENT:SpawnFunction( ply, tr, class )
	if ( !tr.Hit ) then return end
	local pos = tr.HitPos + tr.HitNormal * 4
	local ent = ents.Create( class )
	ent:SetPos( pos )
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:Initialize()
	self:SetModel( self.funModel )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )

	local phys = self.Entity:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
	end
end

function ENT:Use( activator, ply )
	if self.funMode == "armor" then
		activator:SetArmor( math.Clamp( ( activator:Armor() or 100 ) + self.funAmount, 0, self.funLimit ) )
	elseif self.funMode == "health" then
		activator:SetHealth( math.Clamp( ( activator:Health() or 100 ) + self.funAmount, 0, self.funLimit ) )
	elseif self.funMode == "hunger" then
		activator:setSelfDarkRPVar( "Energy", math.Clamp( ( activator:getDarkRPVar("Energy") or 100 ) + self.funAmount, 0, 100  ) )
	end
	
	if self.funChat then
		ply:ChatPrint( self.funChatMsg )
	end
	
	activator:EmitSound( self.funSound, 50, 100 )
	
	self:Remove()
end