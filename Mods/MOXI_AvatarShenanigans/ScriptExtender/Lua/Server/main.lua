
Origin_Avatars = {
    "S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c",
    "S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604",
    "S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255",
    "S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12",
    "S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d",
    "S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679",
}

COMPANIONS = {
    "S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c",
    "S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604",
    "S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255",
    "S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12",
    "S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d",
    "S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679",
    "S_Player_Minsc_0de603c5-42e2-4811-9dad-f652de080eba",
    "S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b",
    "S_GLO_Halsin_7628bc0e-52b8-42a7-856a-13a6fd413323",
    "S_Player_Jaheira_91b6b200-7d00-4d62-8dc9-99e8339dfa1a",
}

DATING_FLAGS = {
    ["S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c"] = "ORI_State_DatingKarlach_f24c3f3e-7287-4908-84bf-ba314921f5ee" ,
    ["S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604"] = "ORI_State_DatingGale_75d0e041-c16c-d089-6d89-64354fa4c9d9",
    ["S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"] = "ORI_State_DatingAstarion_ba298c56-26b6-4918-9bd4-616668d369d8",
    ["S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12"] = "ORI_State_DatingLaezel_86eaa84a-350b-401b-8b43-b53eeb534579",
    ["S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d"] = "ORI_State_DatingWithWyll_f1520748-1d36-4500-9f8a-0da4207f8dd5",
    ["S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679"] = "ORI_State_DatingShadowheart_e87f1e21-a758-47ae-8c0e-9e715eb289b5",
    ["S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b"] = "ORI_State_DatingMinthara_de1360cd-894b-40ea-95a7-1166d675d040"
}

PARTNERED_FLAGS = {
    ["S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c"] = "ORI_State_PartneredWithKarlach_d9ff60fa-0af9-45d7-99b4-bd7c3f80ed12" ,
    ["S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604"] = "ORI_State_PartneredWithGale_e008e20d-d642-42ed-9008-297b6273aa21",
    ["S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"] = "ORI_State_PartneredWithAstarion_30819c8d-b39d-42e7-acd1-2a8c2c309994",
    ["S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12"] = "ORI_State_PartneredWithLaezel_d169a786-6e56-4f0d-a2eb-33c48d8d1160",
    ["S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d"] = "ORI_State_PartneredWithWyll_5db4c1b6-3c42-43ae-aa85-1844acbf5a1d",
    ["S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679"] = "ORI_State_PartneredWithShadowheart_3808ae35-ad4e-465b-800b-63d32b77211e",
    ["S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b"] = "ORI_State_PartneredWithMinthara_39ac48fa-b440-47e6-a436-6dc9b10058d8",
    ["S_GLO_Halsin_7628bc0e-52b8-42a7-856a-13a6fd413323"] = "ORI_State_PartneredWithHalsin_7b53fe60-bb16-48a9-ae5c-9bce1dfac1a9"
}
-- HALSIN_SECONDARY_PARTNERED_FLAG = "ORI_State_PartneredWithHalsinSecondary_6af0be74-d032-4a20-876a-11bab5f86db2"

PersistentVarsTemplate = {
    ["TempInDialogCompanions"] = {},
    ["TempInDialogAvatars"] = {},
    ["TempInDialogSpokeToAvatar"] = {},

}


AVATAR_TAG = "306b9b05-1057-4770-aa17-01af21acd650"
SPELL_CONTAINER = "MX_AS_UTILITY_CONTAINER"
PersistentVars = PersistentVarsTemplate

function IsPlayerInCamp(character_uuid)
    for _, _ in pairs(Osi.DB_PlayerInCamp:Get(character_uuid)) do
        return true
    end
    return false
end

function IsDialogInstanceInclusionDisabled(dialog_instance)
    for _, _ in pairs(Osi.DB_GLO_Inclusion_DisableForDialog:Get(dialog_instance)) do
        return true
    end
    return false

end

function IsDialogInstanceInclusionDisabledCamp(character_uuid, dialog_instance)
    if not IsPlayerInCamp(character_uuid) then
        return false
    end
    for _, _ in pairs(Osi.DB_GLO_Inclusion_DisableForDialogInCamp:Get(dialog_instance)) do
        return true
    end
    return false

end

function IsDialogResourceCombatInclusion(dialog_uuid)
    for _, _ in pairs(Osi.DB_Inclusion_CombatInclusionDialog:Get(dialog_uuid)) do
        return true
    end
    return false

end

function IsPolymorphed(character_uuid)
    for _, _ in pairs(Osi.DB_Is_Polymorphed:Get(character_uuid)) do
        return true
    end
    return false
end
function IsPlayerInObjectInclusion(character_uuid)
    for _, _ in pairs(Osi.DB_ObjectInclusion:Get(nil, character_uuid)) do
        return true
    end
    return false
end

function isStringInList(str, list)
    for _, value in ipairs(list) do
        if value == str then
            return true
        end
    end
    return false
end
function GetOriginAvatars()
    all_origin_avatars = {}
    for _, character_data in pairs(Osi.DB_Avatars:Get(nil)) do
        character_uuid = character_data[1]
        if isStringInList(character_uuid, Origin_Avatars) then
            table.insert(all_origin_avatars, character_uuid)
        end
    end
    return all_origin_avatars
end


function HasInPartyDialog(character_uuid)
    for _, dialog_data in pairs(Osi.DB_GLO_PartyMembers_InPartyDialog:Get(character_uuid, nil)) do
        dialog_resource_uuid = dialog_data[2]
        if dialog_resource_uuid ~= "NULL_00000000-0000-0000-0000-000000000000" then
            return true
        end
    end
    return false
end
function SetupStorage()
    if PersistentVarsTemplate["TempInDialogAvatars"] == nil then
        PersistentVarsTemplate["TempInDialogAvatars"] = {}
    end
    if PersistentVarsTemplate["TempInDialogCompanions"] == nil then
        PersistentVarsTemplate["TempInDialogCompanions"] = {}
    end
    if PersistentVarsTemplate["TempInDialogSpokeToAvatar"] == nil then
        PersistentVarsTemplate["TempInDialogSpokeToAvatar"] = {}
    end
end

function IsBlockCamperPosAdjustment(camper)
    for _, _ in pairs(Osi.DB_Camp_BlockCamperPosAdjustment:Get(current_avatar_guid)) do
        return true
    end
    return false
end

function OnSessionLoaded()
    Ext.Osiris.RegisterListener("DB_DialogRequestCache_SpeakerList_Players", 4, "before", function(a,b,c,d)
        if IsDialogInstanceInclusionDisabled(b) then
            return
        end
        if IsDialogInstanceInclusionDisabledCamp(c, b) then
            return
        end
        if IsDialogResourceCombatInclusion(a) then
            return
        end
        if d ~= 1 then
            return
        end

        if PersistentVarsTemplate["TempInDialogAvatars"][b] == nil then
            -- process this player dialog, go through all avatars who aren't speaking and change to companion so they can get picked up by inclusion nodes
            avatars_to_process = GetOriginAvatars()
            avatars_temporarily_companion = {}
            for _, avatar in ipairs(avatars_to_process) do
                if avatar ~= c and PersistentVarsTemplate["TempInDialogCompanions"][avatar] == nil and PersistentVarsTemplate["TempInDialogSpokeToAvatar"][avatar] == nil then
                    if not IsPlayerInCamp(avatar) then
                        -- compatible with be quiet mod
                        if Osi.HasAppliedStatus(avatar, "MX_BE_QUIET_STATUS") == 0 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
                            -- change this avatar to companion temporarily
                            x = not IsPlayerInObjectInclusion(avatar)
                            y = Osi.QRY_SpeakerIsAvailable(avatar)
                            z = not IsPolymorphed(avatar)
                            w = Osi.QRY_SpeakerIsAvailableAndInDialogRange(avatar,c)
                            if x and y and z and w then
                                table.insert(avatars_temporarily_companion, avatar)
                            end
                        end
                    end
                end

            end
            PersistentVarsTemplate["TempInDialogAvatars"][b] = avatars_temporarily_companion
            for _, avatar in ipairs(avatars_temporarily_companion) do
                Osi.ClearTag(avatar, AVATAR_TAG)
                Osi.DB_Inclusion_SpeakerCandidate(b, avatar)
            end
        end
    end)

    Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function(caster, target, spell, _, _, _)
        if spell == "MX_AS_INC_APPROVAL" and isStringInList(target, COMPANIONS)  then
            Osi.ChangeApprovalRating(target, caster, 1, 10)
        end
        if spell == "MX_AS_DEC_APPROVAL" and isStringInList(target, COMPANIONS)  then
            Osi.ChangeApprovalRating(target, caster, 1, -10)
        end

        if spell == "MX_AS_SET_DATING" and DATING_FLAGS[target] ~= nil then
            Osi.SetFlag(DATING_FLAGS[target], caster)
        end
        if spell == "MX_AS_SET_PARTNERED" and PARTNERED_FLAGS[target] ~= nil then
            Osi.SetFlag(PARTNERED_FLAGS[target], caster)
        end
        if spell == "MX_AS_CLEAR_DATING" and DATING_FLAGS[target] ~= nil then
            Osi.ClearFlag(DATING_FLAGS[target], caster)
        end
        if spell == "MX_AS_CLEAR_PARTNERED" and PARTNERED_FLAGS[target] ~= nil then
            Osi.ClearFlag(PARTNERED_FLAGS[target], caster)
        end
    end)

    Ext.Osiris.RegisterListener("DialogEnded", 2, "after", function(dialog, instanceId)
        if PersistentVarsTemplate["TempInDialogAvatars"][instanceId] ~= nil then
            for _, avatar in ipairs(PersistentVarsTemplate["TempInDialogAvatars"][instanceId]) do
                Osi.SetTag(avatar, AVATAR_TAG)
            end
            PersistentVarsTemplate["TempInDialogAvatars"][instanceId] = nil
        end
    end)

    Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(character_uuid)
        if isStringInList(character_uuid, Origin_Avatars) and HasInPartyDialog(character_uuid) then
            -- gate out real origin avatars who don't have in party dialog
            if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 0 then
                Osi.AddPassive(character_uuid,"MX_AVATAR_PASSIVE")
            end
            pcall(Osi.ObjectTimerLaunch, character_uuid, "MOXI_AvatarShenanigans_SyncAvatarStatus", 1000)
        end
    end)
    Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(_, _)
        SetupStorage()
        local party = Osi.DB_PartyMembers:Get(nil)
        for i = #party, 1, -1 do
            character_uuid = party[i][1]
            if isStringInList(character_uuid, Origin_Avatars) and HasInPartyDialog(character_uuid) then
                -- gate out real origin avatars who don't have in party dialog
                if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 0 then
                    Osi.AddPassive(character_uuid,"MX_AVATAR_PASSIVE")
                end
                if Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 and Osi.HasSpell(character_uuid, SPELL_CONTAINER) == 0 then
                    Osi.AddSpell(character_uuid, SPELL_CONTAINER, 0, 1)
                end

                pcall(Osi.ObjectTimerLaunch, character_uuid, "MOXI_AvatarShenanigans_SyncAvatarStatus", 1000)
            end
        end
    end)

    Ext.Osiris.RegisterListener("DialogActorLeft", 4, "after", function(dialog, instance_id, character_uuid, instance_ended)
        if isStringInList(character_uuid, Origin_Avatars) then
            if PersistentVars["TempInDialogCompanions"][character_uuid] ~= nil then
                -- remove avatar
                if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 then
                    Osi.ClearTag(character_uuid, AVATAR_TAG)
                end
                PersistentVars["TempInDialogCompanions"][character_uuid] = nil
            end
            if PersistentVars["TempInDialogSpokeToAvatar"][character_uuid] ~= nil then
                -- add back avatar
                if Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 then
                    Osi.SetTag(character_uuid, AVATAR_TAG)
                end
                PersistentVars["TempInDialogSpokeToAvatar"][character_uuid] = nil
            end
        end
    end)

    -- this is not called when manually calling startdialog_fixed. only called when clicking on npc
    -- tihs handles clicking on characters as a companion who can change to avatar
    Ext.Osiris.RegisterListener("DialogStartRequested", 2, "before", function(npc, character_uuid)
        if isStringInList(character_uuid, Origin_Avatars)  and Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 0 then
            PersistentVars["TempInDialogCompanions"][character_uuid] = true
            Osi.DB_Avatars(character_uuid) -- force this early!
            Osi.SetTag(character_uuid, AVATAR_TAG)
        end

        if isStringInList(npc, Origin_Avatars) and Osi.HasPassive(npc,"MX_AVATAR_PASSIVE") == 1 and Osi.HasAppliedStatus(npc, "MX_AVATAR_STATUS") == 1 then
            PersistentVars["TempInDialogSpokeToAvatar"][npc] = true
            Osi.DB_Avatars:Delete(npc) -- force this early!
            Osi.ClearTag(npc, AVATAR_TAG)
        end
    end)

    Ext.Osiris.RegisterListener("TagSet", 2, "after", function(character_uuid, tag)
        if tag == AVATAR_TAG and Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 then
            pcall(Osi.ObjectTimerLaunch, character_uuid, "MOXI_AvatarShenanigans_SyncAvatarStatus", 1000)
        end
    end)

    Ext.Osiris.RegisterListener("TagCleared", 2, "after", function(character_uuid, tag)
        if tag == AVATAR_TAG and Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 then
            pcall(Osi.ObjectTimerLaunch, character_uuid, "MOXI_AvatarShenanigans_SyncAvatarStatus", 1000)
        end
    end)

    Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character_uuid, status, _, _)
        if status == "MX_AVATAR_STATUS" and Osi.HasSpell(character_uuid, SPELL_CONTAINER) == 0 then
            Osi.AddSpell(character_uuid, SPELL_CONTAINER, 0, 1)
        end

        if status == "MX_AVATAR_STATUS" and Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 then
            Osi.SetTag(character_uuid, AVATAR_TAG)
            if IsPlayerInCamp(character_uuid) then
                pcall(Osi.ObjectTimerLaunch, character_uuid, "MOXI_AvatarShenanigans_SyncTent", 1000)
            end
        end
    end)

    Ext.Osiris.RegisterListener("StatusRemoved", 4, "after", function (character_uuid, status, _, _)
        if status == "MX_AVATAR_STATUS" and Osi.HasSpell(character_uuid, SPELL_CONTAINER) == 1 then
            Osi.RemoveSpell(character_uuid, SPELL_CONTAINER, 1)
        end

        if status == "MX_AVATAR_STATUS" and Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 then
            Osi.ClearTag(character_uuid, AVATAR_TAG)
        end
    end)

    Ext.Osiris.RegisterListener("TeleportedToCamp", 1, "after", function(character_uuid)
        SetupCamp(character_uuid, false)
    end)

    Ext.Osiris.RegisterListener("ObjectTimerFinished", 2, "after", function(character_uuid, event)
        -- Got to do this async or characters will overlap
        if event == "MOXI_AvatarShenanigans_SyncAvatarStatus" and Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 then
            if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 0 then
                Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
            elseif Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
                Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
            end
        end
        if event == "MOXI_AvatarShenanigans_SyncTent" then
            SetupCamp(character_uuid, true)
        end
    end)
end

function IsAvatar(character)
    for _, _ in pairs(Osi.DB_Avatars:Get(character)) do
        return true
    end
    return false
end

function GetInCamp()
    whos_in_camp = {}
    for _, character_data in pairs(Osi.DB_PlayerInCamp:Get(nil)) do
        character_uuid = character_data[1]
        whos_in_camp[character_uuid] = true
    end
    return whos_in_camp
end

function SetupCamp(current_avatar_guid, skip_teleport)
    active_camps = Osi.DB_ActiveCamp:Get(nil)
    if #active_camps == 0 then
        return
    end

    if IsAvatar(current_avatar_guid) == false then
        return
    end
    current_camp = active_camps[1][1]

    for _, templates in pairs(Osi.DB_Camp_PersonalCornerLevelTemplate:Get(current_camp, current_avatar_guid, nil)) do
        Osi.PROC_CacheLoadLevelTemplate(templates[3])
    end

    if skip_teleport then
        return
    end

    -- origin avatars now have a tent and their tent location is populated. teleport them there
    -- this runs for tav/durge but it'll just move them to entrance
    whos_in_camp = GetInCamp()
    if whos_in_camp[current_avatar_guid] ~= nil and IsBlockCamperPosAdjustment(current_avatar_guid) == false  then
        for _, position_data in pairs(Osi.DB_QRYRTN_Camp_GetCamperPos:Get(current_avatar_guid, nil)) do
            position_trigger = position_data[2]
            if position_trigger ~= "NULL_00000000-0000-0000-0000-000000000000" then
                Osi.PROC_Camp_TeleportToCamp(current_avatar_guid, position_trigger)
                break
            end
        end
    end

end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)