

EFFECT.Mat = Material( "trails/physbeam.vmt" )

/*---------------------------------------------------------
   Init( data table )
---------------------------------------------------------*/
function EFFECT:Init( data )

	self.StartPos 	= data:GetStart()	
	self.EndPos 	= data:GetOrigin()
	self.Dir 		= self.EndPos - self.StartPos
	
	self.fDelta = 3
	
	
	self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos )
	local effectdata = EffectData()
			effectdata:SetOrigin( self.EndPos + self.Dir:GetNormalized() * -2 )
			effectdata:SetNormal( self.Dir:GetNormalized() * -3 )
			effectdata:SetMagnitude( 2 )
			effectdata:SetScale( 1 )
			effectdata:SetRadius( 6 )
		util.Effect( "ImpactGunship", effectdata )
	
	self.TracerTime = math.Rand( 0.6, 0.7 )
	self.Length = math.Rand( 0.1, 0.15 )
	
	// Die when it reaches its target
	self.DieTime = CurTime() + self.TracerTime
	
end

/*---------------------------------------------------------
   THINK
---------------------------------------------------------*/
function EFFECT:Think( )

	if ( CurTime() > self.DieTime ) then
		return false 
	end
	
	return true

end

/*---------------------------------------------------------
   Draw the effect
---------------------------------------------------------*/
function EFFECT:Render( )
	self.fDelta = math.Max( self.fDelta - 0.5, 0)
			
	render.SetMaterial( self.Mat )
	
	render.DrawBeam( self.EndPos, 		
					 self.StartPos,
					 4 + self.fDelta * 20,					
					 0,
					 0,
					 Color( 255, 0, 0, 200 ) )
					 
end
