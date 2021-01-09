TwitchIntegrationData =
{
--Did not reinvent this wheel, copied from CodexMenu
	ZeusUpgrade =
	{
	  "ZeusWeaponTrait", "ZeusRushTrait", "ZeusRangedTrait", "ZeusSecondaryTrait", "ZeusShoutTrait",
		"RetaliateWeaponTrait", "SuperGenerationTrait", "OnWrathDamageBuffTrait", "ZeusBonusBounceTrait",
		"ZeusLightningDebuff", "ZeusBoltAoETrait", "ZeusBonusBoltTrait", "ZeusChargedBoltTrait",
		"PerfectDashBoltTrait",
	},
	PoseidonUpgrade =
	{
		"PoseidonWeaponTrait", "PoseidonSecondaryTrait", "PoseidonRushTrait", "PoseidonRangedTrait", "PoseidonShoutTrait",
		"RoomRewardBonusTrait", "DefensiveSuperGenerationTrait", "BonusCollisionTrait", "SlamExplosionTrait", "SlipperyTrait", "BossDamageTrait",
		"RandomMinorLootDrop", "DoubleCollisionTrait",
		"PoseidonShoutDurationTrait", "EncounterStartOffenseBuffTrait", "FishingTrait"
	},
	AthenaUpgrade =
	{
		"AthenaWeaponTrait", "AthenaSecondaryTrait", "AthenaRushTrait", "AthenaRangedTrait", "AthenaShoutTrait",
		"TrapDamageTrait", "EnemyDamageTrait", "AthenaRetaliateTrait", "PreloadSuperGenerationTrait",
		"AthenaBackstabDebuffTrait", "AthenaShieldTrait", "LastStandDurationDrop", "LastStandHealDrop", "ShieldHitTrait",
		"LastStandDurationTrait", "LastStandHealTrait"
	},
	AphroditeUpgrade =
	{
		"AphroditeWeaponTrait", "AphroditeRushTrait", "AphroditeRangedTrait", "AphroditeSecondaryTrait", "AphroditeShoutTrait",
		"AphroditeRetaliateTrait", "AphroditeDeathTrait", "ProximityArmorTrait", "HealthRewardBonusTrait",
		"AphroditeDurationTrait", "AphroditeWeakenTrait", "AphroditePotencyTrait", "CharmTrait",
		"AphroditeRangedBonusTrait",
	},
	ArtemisUpgrade =
	{
		"ArtemisWeaponTrait", "ArtemisRushTrait", "ArtemisRangedTrait", "ArtemisSecondaryTrait", "ArtemisShoutTrait",
		"CritBonusTrait", "ArtemisSupportingFireTrait", "CritVulnerabilityTrait", "ArtemisCriticalTrait",
		"CriticalBufferMultiplierTrait", "CriticalSuperGenerationTrait", "ArtemisAmmoExitTrait", "MoreAmmoTrait",
	},
	AresUpgrade =
	{
		"AresWeaponTrait", "AresRushTrait", "AresRangedTrait", "AresSecondaryTrait" , "AresShoutTrait",
		"AresRetaliateTrait", "IncreasedDamageTrait", "OnEnemyDeathDamageInstanceBuffTrait", "AresLongCurseTrait",
		"AresLoadCurseTrait", "AresDragTrait", "AresAoETrait", "AresCursedRiftTrait",
		"LastStandDamageBonusTrait",
	},
	DionysusUpgrade =
	{
		"DionysusWeaponTrait", "DionysusSecondaryTrait", "DionysusRushTrait", "DionysusRangedTrait", "DionysusShoutTrait",
		"DoorHealTrait", "LowHealthDefenseTrait", "DionysusSpreadTrait", "DionysusSlowTrait", "DionysusPoisonPowerTrait",
		"DionysusDefenseTrait", "DionysusGiftDrop", "DionysusComboVulnerability",
		"FountainDamageBonusTrait",
		"GiftHealthTrait",
	},
	HermesUpgrade =
	{
		"AmmoReloadTrait", "HermesShoutDodge", "HermesWeaponTrait", "HermesSecondaryTrait", "RushRallyTrait", "MoveSpeedTrait",
		"RushSpeedBoostTrait", "RapidCastTrait", "BonusDashTrait", "DodgeChanceTrait", "AmmoReclaimTrait", "MagnetismTrait", "UnstoredAmmoDamageTrait",
		"RegeneratingSuperTrait", "ChamberGoldTrait", "SpeedDamageTrait",
	},
	DemeterUpgrade =
	{
		--Removed "HarvestBoonDrop", causes crash
		"DemeterWeaponTrait", "DemeterSecondaryTrait", "DemeterRushTrait", "DemeterRangedTrait", "DemeterShoutTrait",
		"CastNovaTrait", "ZeroAmmoBonusTrait", "MaximumChillBlast", "MaximumChillBonusSlow", "HealingPotencyDrop", "InstantChillKill",
		"DemeterRangedBonusTrait", "DemeterRetaliateTrait",
		"HealingPotencyTrait",
	},
	TrialUpgrade =
	{
		"ChaosBlessingMeleeTrait", "ChaosBlessingRangedTrait", "ChaosBlessingAmmoTrait", "ChaosBlessingMaxHealthTrait",
		"ChaosBlessingBoonRarityTrait", "ChaosBlessingMoneyTrait", "ChaosBlessingMetapointTrait", "ChaosBlessingSecondaryTrait",
		"ChaosBlessingDashAttackTrait", "ChaosBlessingExtraChanceTrait", "ChaosBlessingBackstabTrait", "ChaosBlessingAlphaStrikeTrait",
	},
	GodNames =
	{
		"ZeusUpgrade", "PoseidonUpgrade", "AthenaUpgrade", "AphroditeUpgrade", "ArtemisUpgrade", "AresUpgrade", "DionysusUpgrade", "HermesUpgrade", "DemeterUpgrade", "TrialUpgrade",
	},	
	EnemyNames =
	{
		"IllusionistClone", "ShieldRangedElite", "BlastCubeFusedRegenerating", "PunchingBagUnitSuperElite", "ThiefImpulseMineLayerMiniboss", "LightSpawner", "SwarmerSuperElite",
		"CrusherUnit", "ChariotSuicide", "IllusionistClone", "ShieldRangedElite", "BlastCubeFusedRegenerating", "PunchingBagUnitSuperElite", "ReflectiveMirror", "LightSpawner",
		"SwarmerSuperElite", "CrusherUnit", "ChariotSuicide", "SatyrRangedMiniboss", "ShadeSpawnerElite", "UnstableGenerator", "HeavyMeleeSuperElite", "HeavyRangedElite",
		"ShadeBowUnitSuperElite", "TimeCrystal", "Illusionist", "GunBombUnit", "HeavyRanged", "FlurrySpawner", "RangedBurrowerElite", "SplitShotUnitElite", "Harpy",
		"HeavyRangedSplitterMinibossSuperElite", "ChariotSuperElite", "SupportShields", "BloodlessNakedBerserkerElite", "ShadeNaked", "ShadeSwordUnit", "BloodlessSelfDestructElite",
		"RatThugMiniboss", "CrusherUnitSuperElite", "LightRanged", "HeavyMelee", "HealRanged"
	}
}

TwitchIntegrationEvents =
{
	--Heals Zagreus by 25 Health
	{
		id = "HEALTH_PLUS",
		ui_name = "Heal Zagreus",
		weight = 1.0,
		action = function(event)
			
			
			Heal( CurrentRun.Hero, { HealAmount = 25, SourceName = "Item" } )
			--local hp = CurrentRun.Hero.Health
			--local newhp = hp + 25
			--if newhp > CurrentRun.Hero.MaxHealth then
			--	newhp = CurrentRun.Hero.MaxHealth
			--end
			--CurrentRun.Hero.Health = newhp
			thread( UpdateHealthUI )
			--PlaySound({ Name = "/Leftovers/SFX/StaminaRefilled", Id = CurrentRun.Hero.ObjectId })
		end,
	},
	--Deals 25 Damage to Zagreus
	{
		id = "HEALTH_MINUS",
		ui_name = "Damage Zagreus",
		weight = 1.0,
		action = function(event)
			Damage( CurrentRun.Hero, { triggeredById = CurrentRun.Hero.ObjectId, DamageAmount = CurrentRun.Hero.MaxHealth / 10, MinHealth = 1, PureDamage = true, Silent = false } )
		end,
	},
	--Spawns a Max Health Up
	{
		id = "MAX_HEALTH_PLUS",
		ui_name = "Increase Max HP",
		weight = 1.0,
		action = function(event)
			ModUtil.Hades.PrintDisplay( "MAX UP", 1, Color.Green )
			local consumableId = SpawnObstacle({ Name = "RoomRewardMaxHealthDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
			local cost = 0
			local consumable = CreateConsumableItem( consumableId, "RoomRewardMaxHealthDrop", cost )
			ActivatedObjects[consumable.ObjectId] = consumable
			ApplyUpwardForce({ Id = consumableId, Speed = 450 })
			PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
		end,
	},
	--Spawns a Daedalus Hammer
	{
		id = "SPAWN_HAMMER",
		ui_name = "Spawn Daedalus Hammer",
		weight = 1.0,
		action = function(event)
			CreateLoot({ Name = "WeaponUpgrade", OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
		end,
	},
	--Spawns a Pom of Power
	{
		id = "SPAWN_POWERPOM",
		ui_name = "Spawn Pom of Power",
		weight = 1.0,
		action = function(event)
			CreateLoot({ Name = "StackUpgrade", OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
		end,
	},
	--Remove a Random Boon Trait
	{
		id = "REMOVE_BOON",
		ui_name = "Remove Random Boon Trait",
		weight = 1.0,
		action = function(event)
			local traitnum = 0
			for i, traitData in pairs( CurrentRun.Hero.Traits ) do
				traitnum = traitnum + 1
			end
			
			if traitnum > 0 then
				local index = math.random(traitnum)
				table.remove(CurrentRun.Hero.Traits,index)
				HideCombatUI()
				ShowCombatUI()
			end
		end,
	},
	--Spawns a Boon from any of the 10 gods (excludes Hades)
	{
		id = "SPAWN_RANDOM_BOON",
		ui_name = "Spawn Random Boon",
		weight = 1.0,
		action = function(event)
			local godname = TwitchIntegrationData.GodNames[math.random(10)]
			while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not IsCombatEncounterActive( CurrentRun ) do
				wait(1)
			end
			CreateLoot({ Name = godname, OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
		end,
	},
	--Kills all enemies on screen (including traps)
	{
		id = "KILL_ALL_ENEMIES",
		ui_name = "Kill All Enemies",
		weight = 1.0,
		action = function(event)
			for enemyId, enemy in pairs(ActiveEnemies) do
				if enemy and not enemy.IsDead then
					Kill(enemy)
				end
			end
		end,
	},
	--Spawn random enemies
	{
		id = "SPAWN_ENEMIES",
		ui_name = "Spawn Random Enemies",
		weight = 1.0,
		action = function(event)
			local EnemyTable = {}
			local amount = math.random(8)
			for i = 1, amount do
				table.insert(EnemyTable,TwitchIntegrationData.EnemyNames[math.random(9)])
			end
			
			for _,v in ipairs(EnemyTable) do
				local enemyData = EnemyData[v]
				local newEnemy = DeepCopyTable( enemyData )
				newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
				SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
				UseableOff({ Id = newEnemy.ObjectId })
			end
			
		end,
	},
	--Give Gold
	{
		id = "GIVE_PLAYER_GOLD",
		ui_name = "Give 100 Gold",
		weight = 1.0,
		action = function(event)
			local sound = "/SFX/GoldCoinPickup"
			PlaySound({ Name = sound, ManagerCap = 28 })
			CurrentRun.Money = CurrentRun.Money + 100
			ShowResourceUIs({ CombatOnly = not CurrentRun.Hero.IsDead, UpdateIfShowing = true })
			UpdateMoneyUI( CurrentRun.Money )
		end,
	},
	--Remove Gold
	{
		id = "REMOVE_PLAYER_GOLD",
		ui_name = "Remove 100 Gold",
		weight = 1.0,
		action = function(event)
			local sound = "/SFX/GoldCoinPickup"
			PlaySound({ Name = sound, ManagerCap = 28 })
			CurrentRun.Money = CurrentRun.Money - 100
			ShowResourceUIs({ CombatOnly = not CurrentRun.Hero.IsDead, UpdateIfShowing = true })
			UpdateMoneyUI( CurrentRun.Money )
		end,
	},
	--Empty Super Meter
	{
		id = "DRAIN_GOD_GAUGE",
		ui_name = "Drain God Gauge",
		weight = 1.0,
		action = function(event)
			BuildSuperMeter(CurrentRun,CurrentRun.Hero.SuperMeter * -1)
		end,
	},
	--Fill Super Meter
	{
		id = "FILL_GOD_GAUGE",
		ui_name = "Drain God Gauge",
		weight = 1.0,
		action = function(event)
			BuildSuperMeter(CurrentRun,CurrentRun.Hero.SuperMeterLimit)
		end,
	},
	--NO DASH
	{
		id = "DISALLOW_DASH",
		ui_name = "NO EFFECT!",
		weight = 1.0,
		action = function(event)
			RecordSpeedModifier( 0.5, 60 )
		end,
	}
}

--[[

]]--
SaveIgnores["TwitchIntegrationData"] = true
SaveIgnores["TwitchIntegrationEvents"] = true