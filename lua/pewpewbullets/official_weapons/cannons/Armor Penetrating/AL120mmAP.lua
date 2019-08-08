-- Basic Cannon

local BULLET = {}

-- Important Information
BULLET.Version = 2

-- General Information
BULLET.Name = "120mm Auto loading Cannon (AP)"
BULLET.Author = "Chippy"
BULLET.Description = "Auto Loading 120mm Armor Piercing tank cannon."
BULLET.AdminOnly = false
BULLET.SuperAdminOnly = false

-- Appearance
BULLET.Model = "models/combatmodels/tankshell_120mm.mdl"
BULLET.Material = nil
BULLET.Color = nil
BULLET.Trail = nil

-- Effects / Sounds
BULLET.FireSound = {"chippy/120mm.wav"}
BULLET.ExplosionSound = {"weapons/explode1.wav","weapons/explode2.wav"}
BULLET.FireEffect = "cannon_flare"
BULLET.ExplosionEffect = "HEATsplode"

-- Movement
BULLET.Speed = 140
--BULLET.Gravity = 0.056
BULLET.RecoilForce = 800
BULLET.Spread = 0
BULLET.AffectedBySBGravity = true

-- Damage
BULLET.DamageType = "BlastDamage" -- Look in gcombat_damagecontrol.lua for available damage types
BULLET.Damage = 1000
BULLET.Radius = 200
BULLET.RangeDamageMul = 2.2
BULLET.NumberOfSlices = 3
BULLET.SliceDistance = 500
BULLET.ReducedDamagePerSlice = 0
BULLET.PlayerDamage = 200
BULLET.PlayerDamageRadius = 100

-- Reloading/Ammo
BULLET.Reloadtime = 8
BULLET.Ammo = 5
BULLET.AmmoReloadtime = 45

BULLET.EnergyPerShot = 14000

pewpew:AddWeapon( BULLET )