-- Basic Missile

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "Wildfire"
BULLET.Author = "Hexwolf (Base by Kouta)"
BULLET.Description = "Launch up to 24 fireworks with great spread and variable life span."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false
BULLET.UseOldSystem = true

-- Appearance
BULLET.Model = "models/combatmodels/tankshell.mdl"
BULLET.Material = "phoenix_storms/gear"
BULLET.Color = Color(math.random(50,255),math.random(50,255),math.random(50,255))
BULLET.Trail = {StartSize=30, EndSize=0, Length=0.75, Texture="trails/smoke.vmt", Color=Color(255,255,255)}

-- Effects / Sounds
BULLET.FireSound = {"weapons/flaregun_shoot.wav"}
BULLET.ExplosionSound = {"ambient/explosions/explode_8.wav","ambient/explosions/explode_9.wav"}
BULLET.FireEffect = nil
BULLET.ExplosionEffect = "confetti"

-- Movement
BULLET.Speed = 30
BULLET.Gravity = 0
BULLET.RecoilForce = 0
BULLET.Spread = 20

-- Damage
BULLET.DamageType = "BlastDamage"
BULLET.Damage = 10
BULLET.Radius = 150
BULLET.RangeDamageMul = 2
BULLET.NumberOfSlices = nil
BULLET.SliceDistance = nil
BULLET.PlayerDamage = 20
BULLET.PlayerDamageRadius = 150

-- Reloading/Ammo
BULLET.Reloadtime = 0.2
BULLET.Ammo = 24
BULLET.AmmoReloadtime = 20

-- Other
BULLET.Lifetime = {0.5,10}
BULLET.ExplodeAfterDeath = true
BULLET.EnergyPerShot = 650

-- Custom Functions 
-- (If you set the override var to true, the cannon/bullet will run these instead. Use these functions to do stuff which is not possible with the above variables)

pewpew:AddWeapon( BULLET )