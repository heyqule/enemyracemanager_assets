---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 11/8/2022 11:12 PM
---

local force_sound_pack = {
    {
        filename = "__enemyracemanager_assets__/sound/force_under_attack.ogg",
        volume = 0.5
    }
}

local force_muted_sound = {
    filename = "__enemyracemanager_assets__/sound/force_under_attack.ogg",
    volume = 0.0
}

for i = 1, settings.startup["erm-asset-army-destroyed-alert-chance"].value, 1 do
    table.insert(force_sound_pack, force_muted_sound)
end

data:extend({
    {
        type = "sound",
        name = "erm-army-full-population",
        category = "gui-effect",
        filename = "__enemyracemanager_assets__/sound/full_population.ogg",
        aggregation = {
            max_count = 1,
            remove = true,
            progress_threshold = 1,
            count_already_playing = true
        },
        volume = 0.5
    },
    {
        type = "sound",
        name = "erm-army-base-under-attack",
        category = "alert",
        filename = "__enemyracemanager_assets__/sound/base_under_attack.ogg",
        aggregation = {
            max_count = 1,
            remove = true,
            progress_threshold = 1,
            count_already_playing = true
        },
        volume = 0.5
    },
    {
        type = "sound",
        name = "erm-army-force-under-attack",
        category = "alert",
        filename = "__enemyracemanager_assets__/sound/force_under_attack.ogg",
        aggregation = {
            max_count = 1,
            remove = true,
            progress_threshold = 1,
            count_already_playing = true
        },
        volume = 0.5
    },
    {
        type = "sound",
        name = "erm-army-force-under-attack-by-chance",
        category = "alert",
        variations = force_sound_pack,
        aggregation = {
            max_count = 1,
            remove = true,
            progress_threshold = 1,
            count_already_playing = true
        },
    }
});
