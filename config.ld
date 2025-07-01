---@diagnostic disable: undefined-global, lowercase-global
project = 'LDoc NS'
title = 'NS LDoc documentation'
description = 'List of Constructs'
format = 'markdown'
dir = 'docs/developer'
output = 'index'
file = {
    'D:/SteamLibrary/steamapps/common/GarrysMod/garrysmod/gamemodes/nutscript/docs/',
    'D:/SteamLibrary/steamapps/common/GarrysMod/garrysmod/gamemodes/nutscript/gamemode/',
    'D:/SteamLibrary/steamapps/common/GarrysMod/garrysmod/gamemodes/nutscript/plugins/',
    exclude = {
        'D:/SteamLibrary/steamapps/common/GarrysMod/garrysmod/gamemodes/nutscript/gamemode/core/libs/thirdparty',
        'D:/SteamLibrary/steamapps/common/GarrysMod/garrysmod/gamemodes/nutscript/plugins/_disabled/',
        'D:/SteamLibrary/steamapps/common/GarrysMod/garrysmod/gamemodes/nutscript/gamemode/core/hooks'
    }
}

ext = 'md'
template = true
multimodule = true
merge = true
simple_arg_list = true
custom_tags = {
    {
        'realm',
        hidden = true
    },
    {
        'internal',
        hidden = true
    },
    {
        'pluginwarning',
        hidden = true
    }
}

tparam_alias('client', 'Client')
tparam_alias('character', 'Character')
tparam_alias('item', 'Item')
tparam_alias('inv', 'Inventory')
tparam_alias('panel', 'Panel')
tparam_alias('inv', 'Inventory')
tparam_alias('vector', 'Vector')
tparam_alias('angle', 'Angle')
tparam_alias('entity', 'Entity')
tparam_alias('color', 'Color')
kind_names = {
    topic = 'Manual',
    module = 'Libraries'
}

new_type("client", "Client", true)
new_type("plugin", "Plugins", true)
new_type("hook", "Hooks", true)
new_type("derma", "Derma", true)
new_type("metaclass", "Class", true)
new_type("global", "Globals", true)