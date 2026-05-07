AVATAR_TAG = "AVATAR_306b9b05-1057-4770-aa17-01af21acd650"
QUIET_OBJECT_INCLUSION_ID = 123
SPELL_CONTAINER = "MX_AS_UTILITY_CONTAINER"
SYNC_AVATAR_STATUS_TIMER = "MOXI_AvatarShenanigans_SyncAvatarStatus"
SYNC_TENT_TIMER = "MOXI_AvatarShenanigans_SyncTent"
TELEPORT_TO_PARTNER_TIMER = "MOXI_AvatarRomanceImprovements_TeleportToPartner"

function IsAvatarTag(tag)
    return tag == AVATAR_TAG or (type(tag) == "string" and tag:sub(-36):lower() == AVATAR_TAG:sub(-36):lower())
end

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
HIRELINGS = {
    "S_GLO_Hirelings_Wizard_2c8c93f0-898b-42d6-b2ca-cf4922852632",
	"S_GLO_Hirelings_Paladin_244e782b-a99c-444a-bd8d-d356c26c2902",
	"S_GLO_Hirelings_Cleric_12e541ac-1eb3-4b8c-a8b8-95263e30b217",
	"S_GLO_Hirelings_Monk_0b149cab-4438-467a-953d-8697535b953d",
	"S_GLO_Hirelings_Warlock_ee3f1f8d-f2d1-43f2-aba0-72cacafce03c",
	"S_GLO_Hirelings_Sorcerer_097aa418-eda5-47f9-867f-29a4339be03e",
	"S_GLO_Hirelings_Rogue_e4818484-7ee4-466b-82b3-60bbd7b2ff8f",
	"S_GLO_Hirelings_Ranger_0488a406-402c-4bd1-ba38-63b28c112d8d",
	"S_GLO_Hirelings_Fighter_d61d12ad-dc80-4805-8c6e-fb876da196cd",
	"S_GLO_Hirelings_Barbarian_7bed07ee-d1db-498d-bbfd-600ddf04676e",
	"S_GLO_Hirelings_Bard_4d3c9cb3-ca34-46ba-9c81-44081270bfde",
	"S_GLO_Hirelings_Druid_49f522f8-9ac9-431e-ab39-a45e38e222c2",
	
}

DATING_FLAGS = {
    ["S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c"] = "ORI_State_DatingKarlach_f24c3f3e-7287-4908-84bf-ba314921f5ee",
    ["S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604"] = "ORI_State_DatingGale_75d0e041-c16c-d089-6d89-64354fa4c9d9",
    ["S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"] = "ORI_State_DatingAstarion_ba298c56-26b6-4918-9bd4-616668d369d8",
    ["S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12"] = "ORI_State_DatingLaezel_86eaa84a-350b-401b-8b43-b53eeb534579",
    ["S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d"] = "ORI_State_DatingWithWyll_f1520748-1d36-4500-9f8a-0da4207f8dd5",
    ["S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679"] = "ORI_State_DatingShadowheart_e87f1e21-a758-47ae-8c0e-9e715eb289b5",
    ["S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b"] = "ORI_State_DatingMinthara_de1360cd-894b-40ea-95a7-1166d675d040",
}

PARTNERED_FLAGS = {
    ["S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c"] = "ORI_State_PartneredWithKarlach_d9ff60fa-0af9-45d7-99b4-bd7c3f80ed12",
    ["S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604"] = "ORI_State_PartneredWithGale_e008e20d-d642-42ed-9008-297b6273aa21",
    ["S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"] = "ORI_State_PartneredWithAstarion_30819c8d-b39d-42e7-acd1-2a8c2c309994",
    ["S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12"] = "ORI_State_PartneredWithLaezel_d169a786-6e56-4f0d-a2eb-33c48d8d1160",
    ["S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d"] = "ORI_State_PartneredWithWyll_5db4c1b6-3c42-43ae-aa85-1844acbf5a1d",
    ["S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679"] = "ORI_State_PartneredWithShadowheart_3808ae35-ad4e-465b-800b-63d32b77211e",
    ["S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b"] = "ORI_State_PartneredWithMinthara_39ac48fa-b440-47e6-a436-6dc9b10058d8",
    ["S_GLO_Halsin_7628bc0e-52b8-42a7-856a-13a6fd413323"] = "ORI_State_PartneredWithHalsin_7b53fe60-bb16-48a9-ae5c-9bce1dfac1a9",
}

Origin_Avatars = {}
for i = 1, #COMPANIONS do
    table.insert(Origin_Avatars, COMPANIONS[i])
end
for i = 1, #HIRELINGS do
    table.insert(Origin_Avatars, HIRELINGS[i])
end
PersistentVarsTemplate = {
    ["TempInDialogCompanions"] = {},
    ["TempInDialogAvatars"] = {},
    ["TempInDialogSpokeToAvatar"] = {},

}

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

function SyncUtilitySpell(character_uuid)
    if Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
        if Osi.HasSpell(character_uuid, SPELL_CONTAINER) == 0 then
            Osi.AddSpell(character_uuid, SPELL_CONTAINER, 0, 1)
        end
    elseif Osi.HasSpell(character_uuid, SPELL_CONTAINER) == 1 then
        Osi.RemoveSpell(character_uuid, SPELL_CONTAINER, 1)
    end
end

function HandleUtilitySpell(caster, target, spell)
    if spell == "MX_AS_INC_APPROVAL" and isStringInList(target, COMPANIONS) then
        Osi.ChangeApprovalRating(target, caster, 1, 10)
    elseif spell == "MX_AS_DEC_APPROVAL" and isStringInList(target, COMPANIONS) then
        Osi.ChangeApprovalRating(target, caster, 1, -10)
    elseif spell == "MX_AS_SET_DATING" and DATING_FLAGS[target] ~= nil then
        Osi.SetFlag(DATING_FLAGS[target], caster)
    elseif spell == "MX_AS_SET_PARTNERED" and PARTNERED_FLAGS[target] ~= nil then
        Osi.SetFlag(PARTNERED_FLAGS[target], caster)
    elseif spell == "MX_AS_CLEAR_DATING" and DATING_FLAGS[target] ~= nil then
        Osi.ClearFlag(DATING_FLAGS[target], caster)
    elseif spell == "MX_AS_CLEAR_PARTNERED" and PARTNERED_FLAGS[target] ~= nil then
        Osi.ClearFlag(PARTNERED_FLAGS[target], caster)
    end
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

function HasTempInDialogAvatarValue(x)
    local avatars = PersistentVarsTemplate["TempInDialogAvatars"]
    if not avatars then
        return false
    end

    for _, innerTable in pairs(avatars) do
        if type(innerTable) == "table" then
            for _, value in pairs(innerTable) do
                if value == x then
                    return true
                end
            end
        end
    end

    return false
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
        print("Handle DB_DialogRequestCache_SpeakerList_Players")
        if PersistentVarsTemplate["TempInDialogAvatars"][b] == nil then
            -- process this player dialog, go through all avatars who aren't speaking and change to companion so they can picked up by inclusion nodes
            avatars_to_process = GetOriginAvatars()
            avatars_temporarily_companion = {}
            for _, avatar in ipairs(avatars_to_process) do
                if avatar ~= c and PersistentVarsTemplate["TempInDialogCompanions"][avatar] == nil and PersistentVarsTemplate["TempInDialogSpokeToAvatar"][avatar] == nil then
                    if not IsPlayerInCamp(avatar) then
                        if Osi.HasAppliedStatus(avatar, "MX_BE_QUIET_STATUS") == 0 and Osi.HasAppliedStatus(avatar, "MX_AVATAR_STATUS") == 1 then
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
        print("Finish DB_DialogRequestCache_SpeakerList_Players")

    end)

    Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function(caster, target, spell, _, _, _)
        HandleUtilitySpell(caster, target, spell)
    end)

    Ext.Osiris.RegisterListener("DialogEnded", 2, "after", function(dialog, instanceId)
        if PersistentVarsTemplate["TempInDialogAvatars"][instanceId] ~= nil then
            avatars_to_reset = PersistentVarsTemplate["TempInDialogAvatars"][instanceId]
            PersistentVarsTemplate["TempInDialogAvatars"][instanceId] = nil

            for _, avatar in ipairs(avatars_to_reset) do
                Osi.SetTag(avatar, AVATAR_TAG)
            end
        end
    end)
    Ext.Osiris.RegisterListener("DB_DialogRequestCache_SpeakerList_NPCs", 4, "before", function(a,b,c,d)
        --print("DB_DialogRequestCache_SpeakerList_NPCs "..a.." "..b.." "..c.." "..d)
    end)
    Ext.Osiris.RegisterListener("DB_Inclusion_SpeakerCandidate", 2, "before", function(a,b)
        print("DB_Inclusion_SpeakerCandidate "..a.." "..b)
    end)

    Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(character_uuid)
        if isStringInList(character_uuid, Origin_Avatars) then
            -- gate out real origin avatars who don't have in party dialog
            if HasInPartyDialog(character_uuid) or isStringInList(character_uuid, HIRELINGS) then
                if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 0 then
                    Osi.AddPassive(character_uuid,"MX_AVATAR_PASSIVE")
                    if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 0 then
                        Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
                    elseif Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
                        Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
                    end
                end
                pcall(Osi.ObjectTimerLaunch, character_uuid, SYNC_AVATAR_STATUS_TIMER, 1000)
                SyncUtilitySpell(character_uuid)
            end

            if HasInPartyDialog(character_uuid) then
                if Osi.HasPassive(character_uuid,"MX_BE_QUIET_PASSIVE") == 0 then
                    Osi.AddPassive(character_uuid,"MX_BE_QUIET_PASSIVE")
                end
            end
        end
    end)
    Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(_, _)
        local party = Osi.DB_PartyMembers:Get(nil)
        for i = #party, 1, -1 do
            character_uuid = party[i][1]
            print("Processing party member"..character_uuid)
            if isStringInList(character_uuid, Origin_Avatars) then
                print("Origin_Avatars "..character_uuid)
                -- gate out real origin avatars who don't have in party dialog
                if HasInPartyDialog(character_uuid) or isStringInList(character_uuid, HIRELINGS) then
                    print("Checking passive "..character_uuid)

                    if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 0 then
                        print("Adding passive "..character_uuid)

                        Osi.AddPassive(character_uuid,"MX_AVATAR_PASSIVE")
                        if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 0 then
                            print("Already avatar, toggle passive "..character_uuid)
                            Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
                        elseif Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
                            print("Not avatar, toggle passive "..character_uuid)

                            Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
                        end
                    end
                    pcall(Osi.ObjectTimerLaunch, character_uuid, SYNC_AVATAR_STATUS_TIMER, 1000)
                    SyncUtilitySpell(character_uuid)
                end

                if HasInPartyDialog(character_uuid) then
                    if Osi.HasPassive(character_uuid,"MX_BE_QUIET_PASSIVE") == 0 then
                        Osi.AddPassive(character_uuid,"MX_BE_QUIET_PASSIVE")
                    end
                end
            end
        end
    end)
    Ext.Osiris.RegisterListener("DialogStarted", 2, "before", function(dialog, instance_id)
        --print("DialogStarted before"..dialog.." "..instance_id)
    end)
    Ext.Osiris.RegisterListener("DialogActorLeft", 4, "after", function(dialog, instance_id, character_uuid, instance_ended)
        if isStringInList(character_uuid, Origin_Avatars) then
            if PersistentVars["TempInDialogCompanions"][character_uuid] ~= nil then
                -- remove avatar
                PersistentVars["TempInDialogCompanions"][character_uuid] = nil

                if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 then
                    --Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
                    Osi.ClearTag(character_uuid, AVATAR_TAG)
                end
            end
            if PersistentVars["TempInDialogSpokeToAvatar"][character_uuid] ~= nil then
                PersistentVars["TempInDialogSpokeToAvatar"][character_uuid] = nil

                -- add back avatar
                if Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 then
                    --Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
                    Osi.SetTag(character_uuid, AVATAR_TAG)
                end
            end

        end
    end)
    Ext.Osiris.RegisterListener("DialogActorJoined", 4, "after", function(dialog, instance_id, character_uuid, speakerIndex)
        if isStringInList(character_uuid, Origin_Avatars) then
            --print("DialogActorJoined "..character_uuid.." "..speakerIndex)
        end
    end)

    -- this is not called when manually calling startdialog_fixed. only called when clicking on npc
    -- tihs handles clicking on characters as a companion who can change to avatar
    Ext.Osiris.RegisterListener("DialogStartRequested", 2, "before", function(npc, character_uuid)
        --print("DialogStartRequested "..npc .."  " ..character_uuid)
        if PersistentVars["TempInDialogSpokeToAvatar"] == nil then
            PersistentVars["TempInDialogSpokeToAvatar"] = {}
        end
        if PersistentVars["TempInDialogCompanions"] == nil then
            PersistentVars["TempInDialogCompanions"] = {}
        end
        local speaker_is_origin_avatar = isStringInList(character_uuid, Origin_Avatars)
        local target_is_origin_avatar = isStringInList(npc, Origin_Avatars)
        if not speaker_is_origin_avatar and not target_is_origin_avatar then
            return
        end

        if speaker_is_origin_avatar and Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 and Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 then
            PersistentVars["TempInDialogCompanions"][character_uuid] = true
          --  Osi.TogglePassive(character_uuid, "MX_AVATAR_PASSIVE")
            Osi.DB_Avatars(character_uuid) -- force this early!
            Osi.SetTag(character_uuid, AVATAR_TAG)
        end

        if target_is_origin_avatar and Osi.HasPassive(npc,"MX_AVATAR_PASSIVE") == 1 and Osi.IsTagged(npc, AVATAR_TAG) == 1 then
            PersistentVars["TempInDialogSpokeToAvatar"][npc] = true
        --    Osi.TogglePassive(npc, "MX_AVATAR_PASSIVE")
            Osi.DB_Avatars:Delete(npc) -- force this early!
            Osi.ClearTag(npc, AVATAR_TAG)
        end
    end)

    Ext.Osiris.RegisterListener("TagSet", 2, "after", function(character_uuid, tag)
        if IsAvatarTag(tag) then
            -- dont sync
            if PersistentVars["TempInDialogCompanions"] and PersistentVars["TempInDialogCompanions"][character_uuid] == true then
                return
            end

            if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 then
                if Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 0 then
                    print("Force clear flag "..character_uuid)
                    Osi.ClearTag(character_uuid, AVATAR_TAG)
                end
            end
        end
    end)

    
    Ext.Osiris.RegisterListener("TagCleared", 2, "after", function(character_uuid, tag)
        if IsAvatarTag(tag) then
             -- dont sync
            if PersistentVars["TempInDialogSpokeToAvatar"] and PersistentVars["TempInDialogSpokeToAvatar"][character_uuid] == true then
                return
            end

            -- this is a temp tag clear during dialog, ignore
            if HasTempInDialogAvatarValue(character_uuid) then
                return
            end

            if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 then

                if Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
                    print("Force set flag "..character_uuid)
                    Osi.SetTag(character_uuid, AVATAR_TAG)
                end
            end
        end
    end)

    Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(character_uuid, status, _, _)
        if status == "MX_AVATAR_STATUS" then
            SyncUtilitySpell(character_uuid)
            if Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 then
                print("Avatar tag set "..character_uuid)
                Osi.SetTag(character_uuid, AVATAR_TAG)
            end
            if IsPlayerInCamp(character_uuid) then
                pcall(Osi.ObjectTimerLaunch, character_uuid, SYNC_TENT_TIMER, 1000)
            end
        end

        if status == "MX_BE_QUIET_STATUS" then
            Osi.DB_ObjectInclusion(QUIET_OBJECT_INCLUSION_ID, character_uuid)
        end
    end)

    Ext.Osiris.RegisterListener("StatusRemoved", 4, "after", function (character_uuid, status, _, _)
        if status == "MX_AVATAR_STATUS" then
            SyncUtilitySpell(character_uuid)
            if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 then
                print("Avatar tag cleared "..character_uuid)
                Osi.ClearTag(character_uuid, AVATAR_TAG)
            end
        end
        if status == "MX_BE_QUIET_STATUS" then
            Osi.DB_ObjectInclusion:Delete(QUIET_OBJECT_INCLUSION_ID, character_uuid)
        end
    end)

    Ext.Osiris.RegisterListener("TeleportedToCamp", 1, "after", function(character_uuid)
        SetupCamp(character_uuid)
    end)

    Ext.Osiris.RegisterListener("ObjectTimerFinished", 2, "after", function(character_uuid, event)
        -- Got to do this async or characters will overlap
        if event == SYNC_AVATAR_STATUS_TIMER then
            if Osi.HasPassive(character_uuid,"MX_AVATAR_PASSIVE") == 1 then
                if Osi.IsTagged(character_uuid, AVATAR_TAG) == 1 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 0 then
                    Osi.ClearTag(character_uuid, AVATAR_TAG)
                elseif Osi.IsTagged(character_uuid, AVATAR_TAG) == 0 and Osi.HasAppliedStatus(character_uuid, "MX_AVATAR_STATUS") == 1 then
                    Osi.SetTag(character_uuid, AVATAR_TAG)
                end
                SyncUtilitySpell(character_uuid)
            end
        end

        if event == SYNC_TENT_TIMER then
            SetupCamp(character_uuid, true)
        end

        if event == TELEPORT_TO_PARTNER_TIMER then
            partnered_map = GetPartneredMapping() -- dict of uuids to list of partners
            whos_in_camp = GetInCamp()
            partners = partnered_map[character_uuid] or {}
            if #partners >= 1 then
                -- for multiple partners, pick one
                -- prefer partners who are in camp
                partners_in_camp = {}
                partners_not_in_camp = {}
                for _, partner in ipairs(partners) do
                    if whos_in_camp[partner] ~= nil then
                        table.insert(partners_in_camp, partner)
                    else
                        table.insert(partners_not_in_camp, partner)
                    end
                end
                if #partners_in_camp >= 1 then
                    random_partner_index = Ext.Math.Random(#partners_in_camp)
                    random_partner_uuid = partners_in_camp[random_partner_index]
                else
                    random_partner_index = Ext.Math.Random(#partners_not_in_camp)
                    random_partner_uuid = partners_not_in_camp[random_partner_index]
                end
                for _, position_data in pairs(Osi.DB_QRYRTN_Camp_GetCamperPos:Get(random_partner_uuid, nil)) do
                    position_trigger = position_data[2]
                    -- should never be null but check in case
                    if position_trigger ~= "NULL_00000000-0000-0000-0000-000000000000" then
                        Osi.PROC_Camp_TeleportToCamp(character_uuid, position_trigger)
                        break
                    end
                end
            end
        end
    end)
end

-- handles secondary partners
function GetPartneredMapping()
    partnered_map = {}
    for _, partnered_data in pairs(Osi.DB_ORI_Partnered:Get(nil, nil)) do
        if partnered_map[partnered_data[1]] == nil then
            partnered_map[partnered_data[1]] = {partnered_data[2]}
        else
            table.insert(partnered_map[partnered_data[1]], partnered_data[2])
        end
        if partnered_map[partnered_data[2]] == nil then
            partnered_map[partnered_data[2]] = {partnered_data[1]}
        else
            table.insert(partnered_map[partnered_data[2]], partnered_data[1])
        end
    end
    for _, partnered_data in pairs(Osi.DB_ORI_Partnered_Secondary:Get(nil, nil)) do
        if partnered_map[partnered_data[1]] == nil then
            partnered_map[partnered_data[1]] = {partnered_data[2]}
        else
            table.insert(partnered_map[partnered_data[1]], partnered_data[2])
        end
        if partnered_map[partnered_data[2]] == nil then
            partnered_map[partnered_data[2]] = {partnered_data[1]}
        else
            table.insert(partnered_map[partnered_data[2]], partnered_data[1])
        end
    end
    return partnered_map
end
function IsAvatar(character)
    for _, _ in pairs(Osi.DB_Avatars:Get(character)) do
        return true
    end
    return false
end

function IsBlockCamperPosAdjustment(camper)
    for _, _ in pairs(Osi.DB_Camp_BlockCamperPosAdjustment:Get(camper)) do
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

    -- do nothing if not avatar, which means if a companion is the selected character, they will end up at the entrance
    -- but they'll start walking to their tent once unselected, and the avatar will see their partner walk to them
    if IsAvatar(current_avatar_guid) == false then
        return
    end
    current_camp = active_camps[1][1]
    whos_in_camp = GetInCamp()
    partnered_map = GetPartneredMapping() -- dict of uuids to list of partners

    -- force show tent so two avatars partnered to each other has a place to rest
    has_own_tent = false
    for _, templates in pairs(Osi.DB_Camp_PersonalCornerLevelTemplate:Get(current_camp, current_avatar_guid, nil)) do
        template_guid = templates[3]
        Osi.PROC_CacheLoadLevelTemplate(template_guid)
        has_own_tent = true
    end

    if skip_teleport then
        return
    end

    -- character should always be in camp because we are here from the event, but check in case this gets called elsewhere
    if whos_in_camp[current_avatar_guid] ~= nil and IsBlockCamperPosAdjustment(current_avatar_guid) == false  then
        did_move = false
        if partnered_map[current_avatar_guid] ~= nil then
            partners = partnered_map[current_avatar_guid]
            if #partners >= 1 then
                has_partner_in_camp = false
                has_avatar_partner = false
                for _, partner in ipairs(partners) do
                    if whos_in_camp[partner] ~= nil then
                        has_partner_in_camp = true
                    elseif IsAvatar(partner) then
                        has_avatar_partner = true
                    end
                end
                -- We still teleport the avatar if their partner isn't in camp. They'll wait by their partner's tent
                -- UNLESS they're an origin avatar (has_own_tent is true) AND their partner is an avatar, 
                -- in which case they'll chill at their own tent and their partner will meet them there
                if has_partner_in_camp or not (has_own_tent == true and has_avatar_partner == true) then
                    pcall(Osi.ObjectTimerLaunch, current_avatar_guid, TELEPORT_TO_PARTNER_TIMER, 500)
                    did_move = true
                end

            end
        end

        -- origin avatars now have a tent and their tent location is populated. teleport them there
        -- this runs for tav/durge but it'll just move them to entrance
        if did_move == false then
            for _, position_data in pairs(Osi.DB_QRYRTN_Camp_GetCamperPos:Get(current_avatar_guid, nil)) do
                position_trigger = position_data[2]
                if position_trigger ~= "NULL_00000000-0000-0000-0000-000000000000" then
                    Osi.PROC_Camp_TeleportToCamp(current_avatar_guid, position_trigger)
                    break
                end
            end
        end
    end

end

Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
