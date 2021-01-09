@@ -1,337 +0,0 @@
--Mapped to id "HEALTH_PLUS"
function TwitchHeal25(event)
        Heal( CurrentRun.Hero, { HealAmount = CurrentRun.Hero.MaxHealth / 10, SourceName = "Item" } )
        --local hp = CurrentRun.Hero.Health
        --local newhp = hp + 25
        --if newhp > CurrentRun.Hero.MaxHealth then
        --	newhp = CurrentRun.Hero.MaxHealth
        --end
        --CurrentRun.Hero.Health = newhp
        thread( UpdateHealthUI )
        --PlaySound({ Name = "/Leftovers/SFX/StaminaRefilled", Id = CurrentRun.Hero.ObjectId })
end

--Mapped to id "HEALTH_MINUS"
function TwitchDamage25(event)
    Damage( CurrentRun.Hero, { triggeredById = CurrentRun.Hero.ObjectId, DamageAmount = CurrentRun.Hero.MaxHealth / 10, MinHealth = 1, PureDamage = true, Silent = false } )
end

--Mapped to id "MAX_HEALTH_PLUS"
function TwitchSpawnHeart(event)
    ModUtil.Hades.PrintDisplay( "MAX UP", 1, Color.Green )
    local consumableId = SpawnObstacle({ Name = "RoomRewardMaxHealthDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "RoomRewardMaxHealthDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--Mapped to id "SPAWN_HAMMER"
function TwitchSpawnHammer(event)
    while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not IsCombatEncounterActive( CurrentRun ) do
        wait(1)
      end
	CreateLoot({ Name = "WeaponUpgrade", OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
end

--Mapped to id "SPAWN_POWERPOM"
function TwitchSpawnPom(event)
    while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not IsCombatEncounterActive( CurrentRun ) do
        wait(1)
    end
    CreateLoot({ Name = "StackUpgrade", OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
end

--Mapepd to id "REMOVE_BOON"
function TwitchRemoveBoon(event)
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
end

--Mapped to id "SPAWN_ENEMIES"
function TwitchSpawnRandomEnemies(event)
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
end

--Mapped to id "GIVE_PLAYER_GOLD"
function TwitchAdd100Gold(event)
    local sound = "/SFX/GoldCoinPickup"
    PlaySound({ Name = sound, ManagerCap = 28 })
    CurrentRun.Money = CurrentRun.Money + 100
    ShowResourceUIs({ CombatOnly = not CurrentRun.Hero.IsDead, UpdateIfShowing = true })
    UpdateMoneyUI( CurrentRun.Money )
end

--Mapped to id "REMOVE_PLAYER_GOLD"
function TwitchRemove100Gold(event)
    local sound = "/SFX/GoldCoinPickup"
    PlaySound({ Name = sound, ManagerCap = 28 })
    CurrentRun.Money = math.max(CurrentRun.Money - 100, 0)
    ShowResourceUIs({ CombatOnly = not CurrentRun.Hero.IsDead, UpdateIfShowing = true })
    UpdateMoneyUI( CurrentRun.Money )
end

--Mapped to id "DRAIN_GOD_GAUGE"
function TwitchEmptyGodGuage(event)
    BuildSuperMeter(CurrentRun,CurrentRun.Hero.SuperMeter * -1)
end

--Mapped to id "FILL_GOD_GAUGE"
function TwitchFillGodGauge(event)
    BuildSuperMeter(CurrentRun,CurrentRun.Hero.SuperMeterLimit)
end
--[[
--Mapped to id "DISALLOW_DASH"
function TwitchRemoveDash(event)
    RecordSpeedModifier( 0.5, 60 )
end

-Mapped to id "KILL_ALL_ENEMIES"
function TwitchRoomWipe(event)
    for enemyId, enemy in pairs(ActiveEnemies) do
		if enemy and not enemy.IsDead then
		    Kill(enemy)
		end
	end
end
]]--

--Mapped to id "GIVE_PLAYER_DARKNESS"
function TwitchAdd100Darkness(event)
    local consumableId = SpawnObstacle({ Name = "RoomRewardMetaPointDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "RoomRewardMetaPointDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--Mapepd to id "GIVE_PLAYER_NECTAR"
function TwitchAddNectar(event)
    local consumableId = SpawnObstacle({ Name = "GiftDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "GiftDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--Mapped to id "GIVE_PLAYER_KEY"
function TwitchAddKey(event)
    local consumableId = SpawnObstacle({ Name = "LockKeyDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "LockKeyDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--Mapped to id "GIVE_PLAYER_BLOOD"
function TwitchAddBlood(event)
    local consumableId = SpawnObstacle({ Name = "SuperLockKeyDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "SuperLockKeyDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--Mapped to id "GIVE_PLAYER_GEMS"
function TwitchAdd5Gems(event)
    local consumableId = SpawnObstacle({ Name = "GemDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "GemDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--Mapped to id "GIVE_PLAYER_DIAMOND"
function TwitchAddDiamond(event)
    local consumableId = SpawnObstacle({ Name = "SuperGemDrop", DestinationId =  CurrentRun.Hero.ObjectId, Group = "Standing" })
    local cost = 0
    local consumable = CreateConsumableItem( consumableId, "SuperGemDrop", cost )
    ActivatedObjects[consumable.ObjectId] = consumable
    ApplyUpwardForce({ Id = consumableId, Speed = 450 })
    PlaySound({ Name = "/Leftovers/World Sounds/TrainingMontageWhoosh", Id = consumableId })
    consumable.IgnorePurchase = true
end

--[[
--Mapped to id "CHARM_ALL_ENEMIES"
function TwitchRoomCharm(event)
    for enemyId, enemy in pairs(ActiveEnemies) do
      if enemy and not enemy.IsDead then
        ApplyEffectFromWeapon({ Id = enemy.ObjectId, DestinationId = enemy.ObjectId, AutoEquip = true, WeaponName = "AphroditeCharmWeapon", EffectName = "Charm", Duration = 5000})
      end
   end
]]--

--Mapped to id "SPAWN_MINI_CHARIOTS"
function TwitchSpawnMiniChariots(event)
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
end

--Mapped to id "SPAWN_PESTS"
function TwichSpawnPests(event)
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
end

--[[
--Mapped to id "SPAWN_CHAOS_BOON"
function TwitchSpawnChaosInteractible(event)
local godname = TwitchIntegrationData.GodNames[10]
	while CurrentRun.CurrentRoom.ChosenRewardType == "Devotion" and not IsCombatEncounterActive( CurrentRun ) do
		wait(1)
	end
	CreateLoot({ Name = godname, OffsetX = 100, SpawnPoint = CurrentRun.Hero.ObjectId })
end
]]--

--Mapped to id "HIDE_UI"
function TwitchHideUI(event)
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

--Mapped to id "TEMP_BOON_RARITY"
function TwitchForceBoonUp(event)
    AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[1] })
end

--Mapped to id "TEMP_BOON_CHAOS"
function TwitchForceNextGate(event)
    AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[3] })
end

--Mapped to id "TEMP_BOON_TROVE"
function TwitchForceTrove(event)
    AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[4] })
end

--Mapped to id "TEMP_BOON_FISHING"
function TwitchForceFishPoint(event)
    AddTraitToHero({ TraitName = TwitchIntegrationData.TempItems[5] })
end

--Mapped to id "TEMP_BOON_LASTSTAND"
function TwitchForce1Up(event)
    local consumableName = TwitchIntegrationData.TempItems[6]
    local playerId = GetIdsByType({ Name = "_PlayerUnit" })
    local consumableId = SpawnObstacle({ Name = consumableName, DestinationId = playerId, Group = "Standing" })
    local consumable = CreateConsumableItem( consumableId, consumableName, 0 )
    consumable.IgnorePurchase = true
    if consumable.AddMaxHealthArgs then
      consumable.AddMaxHealthArgs.Silent = true
    end
end

--Mapped to id "SPAWN_MINELAYER_BOSS"
function TwitchSpawnMineBoss(event)
    local EnemyTable = { "ThiefImpulseMineLayerMiniboss", "ThiefMineLayerElite", "ThiefMineLayerElite", "ThiefMineLayer", "ThiefMineLayer", "ThiefMineLayer" }      
    for _,v in ipairs(EnemyTable) do
      local enemyData = EnemyData[v]
      local newEnemy = DeepCopyTable( enemyData )
      newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
      SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
      UseableOff({ Id = newEnemy.ObjectId })
    end
end

--[[
--Mapped to id "SPAWN_RATTHUG_BOSS"
function TwitchSpawnRatBoss(event)
      local EnemyTable = { "RatThugMiniboss", "RatThugElite", "RatThugElite", "RatThug", "RatThug", "RatThug" }
      for _,v in ipairs(EnemyTable) do
        local enemyData = EnemyData[v]
        local newEnemy = DeepCopyTable( enemyData )
        newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
        SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
        UseableOff({ Id = newEnemy.ObjectId })
      end
end
]]--

--Mapped to id "SPAWN_HELPING_HANDS"
function TwitchSpawnHands(event)
    local EnemyTable = { "DisembodiedHand", "DisembodiedHand", "DisembodiedHand", "DisembodiedHand", "DisembodiedHand", "DisembodiedHand" }
    for _,v in ipairs(EnemyTable) do
      local enemyData = EnemyData[v]
      local newEnemy = DeepCopyTable( enemyData )
      newEnemy.ObjectId = SpawnUnit({ Name = enemyData.Name, Group = "Standing", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = math.random(-500,500), OffsetY = math.random(-500,500) })
      SetupEnemyObject( newEnemy, CurrentRun, { SkipSpawnVoiceLines = true } )
      UseableOff({ Id = newEnemy.ObjectId })
    end
end