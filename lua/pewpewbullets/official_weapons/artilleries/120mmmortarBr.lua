-- Modifiable Artillery

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "60mm Mortar Barrage (HE)"
BULLET.Author = "Hexwolf (Base by Divran)"
BULLET.Description = "A 60mm mortar which fires in a heavy arch."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = nil
BULLET.Trail = { StartSize = 7,
				 EndSize = 0,
				 Length = 0.6,
				 Texture = "trails/smoke.vmt",
				 Color = Color( 200, 200, 200, 255 ) }

-- Effects / Sounds
BULLET.FireSound = {"weapons/mortar/mortar_fire1.wav"}
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"} -- the sound is included in the effect
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "HEATsplode"
BULLET.EmptyMagSound = nil

-- Movement
BULLET.Speed = 30
BULLET.Gravity = 0.45
BULLET.RecoilForce = 500
BULLET.Spread = 0.15
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage" -- Look in gcombat_damagecontrol.lua for available damage types
BULLET.Damage = 400
BULLET.Radius = 450
BULLET.RangeDamageMul = 2.6
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 110
BULLET.PlayerDamageRadius = 450

-- Reloading/Ammo
BULLET.Reloadtime = 0.06
BULLET.Ammo = 5
BULLET.AmmoReloadtime = 60

-- Other
BULLET.Lifetime = nil
BULLET.ExplodeAfterDeath = false
BULLET.EnergyPerShot = 1000

BULLET.CustomInputs = { "Fire", "Reload", "Speed" }
BULLET.CustomOutputs = nil

BULLET.UseOldSystem = true

pewpew:AddWeapon( BULLET )
