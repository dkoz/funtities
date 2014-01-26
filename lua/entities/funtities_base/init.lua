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
	if self.funMode then
		activator:SetArmor( activator:Armor() + self.funAmount )
	else
		activator:SetHealth( activator:Health() + self.funAmount )
	end
	
	if self.funChat then
		ply:ChatPrint( self.funChatMsg )
	end
	
	activator:EmitSound( self.funSound, 50, 100 )
	
	self:Remove()
end