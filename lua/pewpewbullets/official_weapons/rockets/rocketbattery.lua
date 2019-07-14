-- Rocket Battery

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Rocket Battery"
BULLET.Author = "Divran"
BULLET.Description = "Rapid fire rocket battery with 12 dumb rockets."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/weapons/W_missile_launch.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = { StartSize = 15,
				 EndSize = 0,
				 Length = 1,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 255, 255, 255, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"weapons/stinger_fire1.wav" }
BULLET.ExplosionSound = nil
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "explosion"
BULLET.EmptyMagSound = nil

-- Movement
BULLET.Speed = 80
BULLET.Gravity = 0
BULLET.RecoilForce = 200
BULLET.Spread = 0.4
BULLET.AngleOffset = Angle(-90,0,0)

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 100
BULLET.Radius = 75
BULLET.RangeDamageMul = 2.8
BULLET.PlayerDamage = 25
BULLET.PlayerDamageRadius = 50

-- Reloading/Ammo
BULLET.Reloadtime = 0.25
BULLET.Ammo = 6
BULLET.AmmoReloadtime = 8

-- Other
BULLET.Lifetime = {3,4}
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 200

pewpew:AddWeapon( BULLET )