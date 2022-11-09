---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by heyqule.
--- DateTime: 9/5/2022 9:33 PM
---


local SharedFunctions = {}

function SharedFunctions.process_glow(entity, data, layer)
    if data['draw_as_glow'] then
        entity['animations'][layer]['draw_as_glow'] = true
    end
    return entity
end

function SharedFunctions.process_lighting(entity, data)
    if settings.startup['erm-asset-projectile-enable-lighting'].value and
            data['lighting_color'] and data['lighting_intensity'] and data['lighting_size'] then
        entity['light'] = {
            intensity = data['lighting_intensity'],
            color = data['lighting_color'],
            size = data['lighting_size']
        }
    end
    return entity
end

function SharedFunctions.convert_scale(scale)
    return string.gsub(tostring(scale),"%.", "-")
end

return SharedFunctions