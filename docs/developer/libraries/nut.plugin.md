# nut.plugin
Plugin Module.

Core system for loading and managing NutScript plugins and schema components.
## Functions
??? realm-shared "<a id=nut.plugin.load></a>nut.plugin.load (uniqueID, path, isSingleFile, variable)"
    ##### sh_nut.plugin.load {#nut.plugin.load}
    Loads a plugin from specified path
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Unique plugin identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">path</span>
     Path to plugin directory

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">isSingleFile</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether loading single file

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">variable</span>
    <em><ins>`optional. default`: `"PLUGIN"`</ins></em>
     Global variable name



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.plugin.load("myplugin", "plugins/myplugin")

        ```
    </ul>
??? realm-shared "<a id=nut.plugin.loadExtras></a>nut.plugin.loadExtras (path)"
    ##### sh_nut.plugin.loadExtras {#nut.plugin.loadextras}
    Loads additional plugin resources
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">path</span>
     Base plugin path



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.plugin.loadExtras("plugins/myplugin")

        ```
    </ul>
??? realm-shared "<a id=nut.plugin.loadEntities></a>nut.plugin.loadEntities (path)"
    ##### sh_nut.plugin.loadEntities {#nut.plugin.loadentities}
    Loads entities from plugin directory
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">path</span>
     Path to entities directory



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.plugin.loadEntities("plugins/myplugin/entities")

        ```
    </ul>
??? realm-shared "<a id=nut.plugin.initialize></a>nut.plugin.initialize ()"
    ##### sh_nut.plugin.initialize {#nut.plugin.initialize}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Initializes core plugin system

    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.plugin.initialize()

        ```
    </ul>
??? realm-shared "<a id=nut.plugin.loadFromDir></a>nut.plugin.loadFromDir (directory)"
    ##### sh_nut.plugin.loadFromDir {#nut.plugin.loadfromdir}
    Loads all plugins from directory
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Directory to scan



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.plugin.loadFromDir("plugins")

        ```
    </ul>
??? realm-server "<a id=nut.plugin.setDisabled></a>nut.plugin.setDisabled (uniqueID, disabled)"
    ##### sv_nut.plugin.setDisabled {#nut.plugin.setdisabled}
    Sets plugin disabled state
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Plugin identifier

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">disabled</span>
     Whether to disable



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.plugin.setDisabled("myplugin", true)

        ```
    </ul>
??? realm-shared "<a id=nut.plugin.isDisabled></a>nut.plugin.isDisabled (uniqueID)"
    ##### sh_nut.plugin.isDisabled {#nut.plugin.isdisabled}
    Checks if plugin is disabled
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Plugin identifier


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Disabled status



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        if nut.plugin.isDisabled("myplugin") then return end

        ```
    </ul>
## Tables
??? realm-shared "<a id=PluginDef></a>PluginDef"
    ##### sh_PluginDef {#plugindef}
    Plugin Definition Structure
    <h3>Fields:</h3>
    <span class="types">vararg</span>
    <span class="parameter">uniqueID</span>
     Unique string identifier

    <span class="types">vararg</span>
    <span class="parameter">name</span>
     Display name

    <span class="types">vararg</span>
    <span class="parameter">desc</span>
     Description text

    <span class="types">vararg</span>
    <span class="parameter">author</span>
     Author name

    <span class="types">vararg</span>
    <span class="parameter">folder</span>
     Plugin directory path

    <span class="types">vararg</span>
    <span class="parameter">loading</span>
     Loading state flag



