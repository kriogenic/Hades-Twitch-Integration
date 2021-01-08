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
  -- 45 enemy entries, minichariot is 9, ThiefImpulseMineLayerMiniboss is 5, ThiefMineLayer is 45
  EnemyNames =
  {
    "IllusionistClone", "ShieldRangedElite", "BlastCubeFusedRegenerating", "PunchingBagUnitSuperElite", "LightSpawner", "SwarmerSuperElite",
    "CrusherUnit", "ChariotSuicide", "IllusionistClone", "ShieldRangedElite", "BlastCubeFusedRegenerating", "PunchingBagUnitSuperElite", "ReflectiveMirror", "LightSpawner",
    "SwarmerSuperElite", "CrusherUnit", "ChariotSuicide", "ShadeSpawnerElite", "UnstableGenerator", "HeavyMeleeSuperElite", "HeavyRangedElite",
    "ShadeBowUnitSuperElite", "TimeCrystal", "Illusionist", "GunBombUnit", "HeavyRanged", "FlurrySpawner", "RangedBurrowerElite", "SplitShotUnitElite", "Harpy",
    "HeavyRangedSplitterMinibossSuperElite", "ChariotSuperElite", "SupportShields", "BloodlessNakedBerserkerElite", "ShadeNaked", "ShadeSwordUnit", "BloodlessSelfDestructElite", "CrusherUnitSuperElite", "LightRanged", "HeavyMelee", "HealRanged", "ThiefMineLayer"
  },
  -- Temporary items from the well shops
  TempItems =
  {
    "TemporaryBoonRarityTrait", "TemporaryPreloadSuperGenerationTrait", "TemporaryForcedSecretDoorTrait", "TemporaryForcedChallengeSwitchTrait", "TemporaryForcedFishingPointTrait", "LastStandDrop"
  }
}

TwitchIntegrationEvents =
{
	--Heals Zagreus by 25 Health
	{
		id = "HEALTH_PLUS",
		ui_name = "Heal me",
		weight =0.5,
		action = function(event)
			
			
			Heal( CurrentRun.Hero, { HealAmount = CurrentRun.Hero.MaxHealth / 10, SourceName = "Item" } )
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
		ui_name = "Hurt me",
		weight = 0.7,
		action = function(event)
			Damage( CurrentRun.Hero, { triggeredById = CurrentRun.Hero.ObjectId, DamageAmount = CurrentRun.Hero.MaxHealth / 10, MinHealth = 1, PureDamage = true, Silent = false } )
		end,
	},
	--Spawns a Max Health Up
	{
		id = "MAX_HEALTH_PLUS",
		ui_name = "Increase Max HP",
		weight = 0.3,
		action = function(event)
			ModUtil.Hades.PrintDisplay( "MAX UP", 1, Color.Green )
			local consumableId = SpawnObstacle({ Name = "RoomRewardMaxHealthDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
			local cost = 0
			local consumable = CreateConsumableItem( consumableId, "RoomRewardMaxHealthDrop", cost )
			ActivatedObjects[consumable.ObjectId] = consumable
			ApplyUpwardForce({ Id = consumableId, Speed = 450 })
			PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
      consumable.IgnorePurchase = true
		end,
	},
	--Spawns a Daedalus Hammer
	{
		id = "SPAWN_HAMMER",
		ui_name = "Daedalus Hammer",
		weight = 0.3,
		action = function(event)
      while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not     IsCombatEncounterActive( CurrentRun ) do
        wait(1)
      end
			CreateLoot({ Name = "WeaponUpgrade", OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
		end,
	},
	--Spawns a Pom of Power
	{
		id = "SPAWN_POWERPOM",
		ui_name = "Pom of Power",
		weight = 0.4,
		action = function(event)
      while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not     IsCombatEncounterActive( CurrentRun ) do
      wait(1)
      end
      CreateLoot({ Name = "StackUpgrade", OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
		end,
  },
	--Remove a Random Boon Trait
	{
		id = "REMOVE_BOON",
		ui_name = "Remove Boon",
		weight = 0.4,
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
		weight = 0.2,
		action = function(event)
			local godname = TwitchIntegrationData.GodNames[math.random(10)]
			while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not IsCombatEncounterActive( CurrentRun ) do
				wait(1)
			end
			CreateLoot({ Name = godname, OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
		end,
	},
--Spawn random enemies
{
  id = "SPAWN_ENEMIES",
  ui_name = "Spawn Random Enemies",
  weight = 0.7,
  action = function(event)
    local EnemyTable = {}
    local amount = math.random(4)
    for i = 1, amount do
      table.insert(EnemyTable,TwitchIntegrationData.EnemyNames[math.random(44)])
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
		ui_name = "+100 Gold",
		weight = 0.4,
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
		ui_name = "-100 Gold",
		weight = 0.6,
		action = function(event)
			local sound = "/SFX/GoldCoinPickup"
			PlaySound({ Name = sound, ManagerCap = 28 })
      CurrentRun.Money = math.max(CurrentRun.Money - 100, 0)
			ShowResourceUIs({ CombatOnly = not CurrentRun.Hero.IsDead, UpdateIfShowing = true })
			UpdateMoneyUI( CurrentRun.Money )
		end,
	},
	--Empty Super Meter
	{
		id = "DRAIN_GOD_GAUGE",
		ui_name = "Drain God Gauge",
		weight = 0.7,
		action = function(event)
			BuildSuperMeter(CurrentRun,CurrentRun.Hero.SuperMeter * -1)
		end,
	},
	--Fill Super Meter
	{
		id = "FILL_GOD_GAUGE",
		ui_name = "Fill God Gauge",
		weight = 0.4,
		action = function(event)
			BuildSuperMeter(CurrentRun,CurrentRun.Hero.SuperMeterLimit)
		end,
	},
	--NO DASH (This doesn't appear to work)
	--{
	--	id = "DISALLOW_DASH",
	--	ui_name = "1 Minute No Dash",
	--	weight = 0.0,
	--	action = function(event)
	--		RecordSpeedModifier( 0.5, 60 )
	--	end,
	--},
	--Kills all enemies on screen (including traps)
--	{
		--id = "KILL_ALL_ENEMIES",
		--ui_name = "Kill All Enemies",
		--weight = 0.4,
		--action = function(event)
--			for enemyId, enemy in pairs(ActiveEnemies) do
				--if enemy and not enemy.IsDead then
--					Kill(enemy)
				--end
			--end
		--end,
	--},
	--Give Darkness
	{
		id = "GIVE_PLAYER_DARKNESS",
		ui_name = "+100 Darkness",
		weight = 0.4,
		action = function(event)
    local consumableId = SpawnObstacle({ Name = "RoomRewardMetaPointDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
          local cost = 0
          local consumable = CreateConsumableItem( consumableId, "RoomRewardMetaPointDrop", cost )
          ActivatedObjects[consumable.ObjectId] = consumable
          ApplyUpwardForce({ Id = consumableId, Speed = 450 })
          PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
          consumable.IgnorePurchase = true
		end,
	},
	--Give Nectar
	{
		id = "GIVE_PLAYER_NECTAR",
		ui_name = "+1 Nectar",
		weight = 0.5,
		action = function(event)
    local consumableId = SpawnObstacle({ Name = "GiftDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
          local cost = 0
          local consumable = CreateConsumableItem( consumableId, "GiftDrop", cost )
          ActivatedObjects[consumable.ObjectId] = consumable
          ApplyUpwardForce({ Id = consumableId, Speed = 450 })
          PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
          consumable.IgnorePurchase = true
		end,
	},
	--Give Key
	{
		id = "GIVE_PLAYER_KEY",
		ui_name = "+1 Key",
		weight = 0.4,
		action = function(event)
    local consumableId = SpawnObstacle({ Name = "LockKeyDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
          local cost = 0
          local consumable = CreateConsumableItem( consumableId, "LockKeyDrop", cost )
          ActivatedObjects[consumable.ObjectId] = consumable
          ApplyUpwardForce({ Id = consumableId, Speed = 450 })
          PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
          consumable.IgnorePurchase = true
		end,
	},
	--Give Blood
	{
		id = "GIVE_PLAYER_BLOOD",
		ui_name = "+1 Blood",
		weight = 0.3,
		action = function(event)
    local consumableId = SpawnObstacle({ Name = "SuperLockKeyDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
          local cost = 0
          local consumable = CreateConsumableItem( consumableId, "SuperLockKeyDrop", cost )
          ActivatedObjects[consumable.ObjectId] = consumable
          ApplyUpwardForce({ Id = consumableId, Speed = 450 })
          PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
          consumable.IgnorePurchase = true
		end,
	},
	--Give Gems
	{
		id = "GIVE_PLAYER_GEMS",
		ui_name = "+5 Gemstones",
		weight = 0.6,
		action = function(event)
    local consumableId = SpawnObstacle({ Name = "GemDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
          local cost = 0
          local consumable = CreateConsumableItem( consumableId, "GemDrop", cost )
          ActivatedObjects[consumable.ObjectId] = consumable
          ApplyUpwardForce({ Id = consumableId, Speed = 450 })
          PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
          consumable.IgnorePurchase = true
		end,
	},
	--Give Diamond
	{
		id = "GIVE_PLAYER_DIAMOND",
		ui_name = "+1 Diamond",
		weight = 0.2,
		action = function(event)
    local consumableId = SpawnObstacle({ Name = "SuperGemDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
          local cost = 0
          local consumable = CreateConsumableItem( consumableId, "SuperGemDrop", cost )
          ActivatedObjects[consumable.ObjectId] = consumable
          ApplyUpwardForce({ Id = consumableId, Speed = 450 })
          PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
          consumable.IgnorePurchase = true
		end,
	},
--Charms all enemies in the room (including traps) [This doesn't appear to work. Can't apply weapon effects this way.]
--{
--  id = "CHARM_ALL_ENEMIES",
--  ui_name = "Charm All Enemies",
--  weight = 1.0,
--  action = function(event)
--    for enemyId, enemy in pairs(ActiveEnemies) do
--      if enemy and not enemy.IsDead then
--        ApplyEffectFromWeapon({ Id = enemy.ObjectId, DestinationId = enemy.ObjectId, AutoEquip = true, WeaponName = "AphroditeCharmWeapon", EffectName = "Charm", Duration = 5000})
--      end
--    end
--  end,
--},
--Spawn little chariot bastards
  {
    id = "SPAWN_MINI_CHARIOTS",
    ui_name = "Mini Chariot Army!",
    weight = 0.7,
    action = function(event)
      local EnemyTable = {}
      local amount = math.random(8)
      for i = 1, amount do
        table.insert(EnemyTable,TwitchIntegrationData.EnemyNames[9])
      end
      
      for _,v in ipairs(EnemyTable) do
        local enemyData = EnemyData[v]
        local newEnemy = DeepCopyTable( enemyData )
        newEnemy.ObjectId = SpawnUnit({ Name = "ChariotSuicide", Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
        SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
        UseableOff({ Id = newEnemy.ObjectId })
      end
      
    end,
  },
--Spawn mine-flinging pests
  {
    id = "SPAWN_PESTS",
    ui_name = "Mine-flinging pests!",
    weight = 0.8,
    action = function(event)
      local EnemyTable = {}
      local amount = math.random(8)
      for i = 1, amount do
        table.insert(EnemyTable,TwitchIntegrationData.EnemyNames[45])
      end
      
      for _,v in ipairs(EnemyTable) do
        local enemyData = EnemyData[v]
        local newEnemy = DeepCopyTable( enemyData )
        newEnemy.ObjectId = SpawnUnit({ Name = "ThiefMineLayer", Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
        SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
        UseableOff({ Id = newEnemy.ObjectId })
      end
      
    end,
  },
	--Give Chaos Boon
	--{
	--	id = "SPAWN_CHAOS_BOON",
	--	ui_name = "Chaos Challenge",
	--	weight = 1.0,
	--	action = function(event)
	--		local godname = TwitchIntegrationData.GodNames[10]
	--		while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not IsCombatEncounterActive( CurrentRun ) do
	--			wait(1)
	--		end
	--		CreateLoot({ Name = godname, OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
	--	end,
	--},
--Hide UI for 30 seconds
{
  id = "HIDE_UI",
  ui_name = "Hide UI (30)",
  weight = 0.8,
  action = function(event)
    if ConfigOptionCache.ShowUIAnimations then
      SetConfigOption({ Name = "ShowUIAnimations", Value = false })
      SetConfigOption({ Name = "UseOcclusion", Value = false })
      HideCombatUI()
      wait(30)
      SetConfigOption({ Name = "ShowUIAnimations", Value = true })
      SetConfigOption({ Name = "UseOcclusion", Value = true })
      ShowCombatUI()
    else
      SetConfigOption({ Name = "ShowUIAnimations", Value = true })
      SetConfigOption({ Name = "UseOcclusion", Value = true })
      ShowCombatUI()
      wait(3)
      SetConfigOption({ Name = "ShowUIAnimations", Value = false })
      SetConfigOption({ Name = "UseOcclusion", Value = false })
      HideCombatUI()
      wait(30)
      SetConfigOption({ Name = "ShowUIAnimations", Value = true })
      SetConfigOption({ Name = "UseOcclusion", Value = true })
      ShowCombatUI()
    end
    UpdateConfigOptionCache()
  end
},
--Give temporary boon rarity item from well shop
	{
		id = "TEMP_BOON_RARITY",
		ui_name = "Improve next boon",
		weight = 0.3,
		action = function(event)
      AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[1] })
		end,
	},
--The next room that can have a chaos gate, will have one.
	{
		id = "TEMP_BOON_CHAOS",
		ui_name = "Chaos Gate",
		weight = 0.6,
		action = function(event)
      AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[3] })
		end,
	},
--The next room that can have a infernal trove, will have one.
	{
		id = "TEMP_BOON_TROVE",
		ui_name = "Infernal Trove",
		weight = 0.5,
		action = function(event)
      AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[4] })
		end,
	},
--The next room that can have a fishing hole, will have one.
	{
		id = "TEMP_BOON_FISHING",
		ui_name = "Fishing Hole",
		weight = 0.5,
		action = function(event)
      AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[5] })
		end,
	},
--Give temporary boon rarity item from well shop
	{
		id = "TEMP_BOON_LASTSTAND",
		ui_name = "Refill Defiance",
		weight = 0.3,
		action = function(event)
			local consumableName = TwitchIntegrationData.TempItems[6]
      local playerId = GetIdsByType({ Name = "_PlayerUnit" })
      local consumableId = SpawnObstacle({ Name = consumableName, DestinationId = playerId, Group = "Standing" })
      local consumable = CreateConsumableItem( consumableId, consumableName, 0 )
      consumable.IgnorePurchase = true
      if consumable.AddMaxHealthArgs then
        consumable.AddMaxHealthArgs.Silent = true
      end
		end,
	},
--Spawn minelayer boss battle
{
  id = "SPAWN_MINELAYER_BOSS",
  ui_name = "Minelayer Boss Battle",
  weight = 0.7,
  action = function(event)
    local EnemyTable = { "ThiefImpulseMineLayerMiniboss", "ThiefMineLayerElite", "ThiefMineLayerElite", "ThiefMineLayer", "ThiefMineLayer", "ThiefMineLayer" }      
    for _,v in ipairs(EnemyTable) do
      local enemyData = EnemyData[v]
      local newEnemy = DeepCopyTable( enemyData )
      newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
      SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
      UseableOff({ Id = newEnemy.ObjectId })
    end      
  end,
},
--[[Spawn minelayer boss battle
  {
    id = "SPAWN_RATTHUG_BOSS",
    ui_name = "Rat Thug Boss Battle",
    weight = 0.7,
    action = function(event)
      local EnemyTable = { "RatThugMiniboss", "RatThugElite", "RatThugElite", "RatThug", "RatThug", "RatThug" }      
      for _,v in ipairs(EnemyTable) do
        local enemyData = EnemyData[v]
        local newEnemy = DeepCopyTable( enemyData )
        newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
        SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
        UseableOff({ Id = newEnemy.ObjectId })
      end      
    end,
  },
--]]
--Spawn helping hands boss battle
  {
    id = "SPAWN_HELPING_HANDS",
    ui_name = "Helping Hands",
    weight = 0.7,
    action = function(event)
      local EnemyTable = { "DisembodiedHand", "DisembodiedHand", "DisembodiedHand", "DisembodiedHand", "DisembodiedHand", "DisembodiedHand" }
      for _,v in ipairs(EnemyTable) do
        local enemyData = EnemyData[v]
        local newEnemy = DeepCopyTable( enemyData )
        newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
        SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
        UseableOff({ Id = newEnemy.ObjectId })
      end
    end,
  },
}
--[[

]]--
SaveIgnores["TwitchIntegrationData"] = true
SaveIgnores["TwitchIntegrationEvents"] = true
