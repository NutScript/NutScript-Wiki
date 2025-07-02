# PLUGIN
Plugin Hook Documentation.

Base hooks for plugins. Hooks are functions that can have code appended to, and are triggered at specific events.
NutScript allows you to add hooks via PLUGIN, rather than hook.Add.
See: <https://wiki.facepunch.com/gmod/Hook_Library_Usage> and [Why use PLUGIN?](../../guides/development/developing_plugins.md#why-plugin)
## Character-related hooks

???+ realm-server "<a id=PLUGIN:CharacterLoaded></a>PLUGIN:CharacterLoaded (id)"
    ##### sv_PLUGIN:CharacterLoaded {#plugincharacterloaded}
    Called when a character is fully loaded.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     The character ID that was loaded



???+ realm-server "<a id=PLUGIN:CharacterPreSave></a>PLUGIN:CharacterPreSave (character)"
    ##### sv_PLUGIN:CharacterPreSave {#plugincharacterpresave}
    Called right before a character is saved.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The character being saved



???+ realm-shared "<a id=PLUGIN:CanPlayerUseChar></a>PLUGIN:CanPlayerUseChar (client, char)"
    ##### sh_PLUGIN:CanPlayerUseChar {#plugincanplayerusechar}
    Checks whether a player can play as a specific character.
	 Return false and a string to prevent a character from being selected.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player trying to load a character

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">char</span>
     The character being loaded


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>




    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Reason the character can't be loaded



???+ realm-shared "<a id=PLUGIN:GetDefaultCharDesc></a>PLUGIN:GetDefaultCharDesc (client, faction)"
    ##### sh_PLUGIN:GetDefaultCharDesc {#plugingetdefaultchardesc}
    Returns the default character description used during creation.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player creating the character

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">faction</span>
     The faction index of the character



???+ realm-shared "<a id=PLUGIN:GetDefaultCharName></a>PLUGIN:GetDefaultCharName (client, faction)"
    ##### sh_PLUGIN:GetDefaultCharName {#plugingetdefaultcharname}
    Returns the default character name used during creation.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player creating the character

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">faction</span>
     The faction index of the character



???+ realm-shared "<a id=PLUGIN:CheckFactionLimitReached></a>PLUGIN:CheckFactionLimitReached (faction, character, client)"
    ##### sh_PLUGIN:CheckFactionLimitReached {#plugincheckfactionlimitreached}
    Whether or not more players are allowed to load a character of a specific faction.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">faction</span></span>
    <span class="parameter">faction</span>
     Faction metadata

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The character trying to join

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player trying to join


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>






???+ realm-server "<a id=PLUGIN:PlayerLoadedChar></a>PLUGIN:PlayerLoadedChar (client, character, lastChar)"
    ##### sv_PLUGIN:PlayerLoadedChar {#pluginplayerloadedchar}
    Runs after a player loads a character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player Entity

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The new character

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">lastChar</span>
    [opt] Previous character



???+ realm-server "<a id=PLUGIN:PrePlayerLoadedChar></a>PLUGIN:PrePlayerLoadedChar (client, character, lastChar)"
    ##### sv_PLUGIN:PrePlayerLoadedChar {#pluginpreplayerloadedchar}
    Runs before a player loads a character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player Entity

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The new character

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">lastChar</span>
    [opt] Previous character



???+ realm-shared "<a id=PLUGIN:OnCharVarChanged></a>PLUGIN:OnCharVarChanged (char, varName, oldVar, newVar)"
    ##### sh_PLUGIN:OnCharVarChanged {#pluginoncharvarchanged}
    Triggers whenever a character's var is changed.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">char</span>
     The character affected

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">varName</span>
     Name of the variable

    <span class="types">vararg</span>
    <span class="parameter">oldVar</span>
     Old value

    <span class="types">vararg</span>
    <span class="parameter">newVar</span>
     New value



## Inventory management hooks

???+ realm-shared "<a id=PLUGIN:CanItemBeTransfered></a>PLUGIN:CanItemBeTransfered (itemObject, curInv, inventory)"
    ##### sh_PLUGIN:CanItemBeTransfered {#plugincanitembetransfered}
    Check whether an item can be transferred between inventories.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">itemObject</span>
     The item

    <span class="types"><span class="type">Inventory</span></span>
    <span class="parameter">curInv</span>
     Current inventory

    <span class="types"><span class="type">Inventory</span></span>
    <span class="parameter">inventory</span>
     Target inventory


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Return false to block transfer



???+ realm-server "<a id=PLUGIN:CanPlayerDropItem></a>PLUGIN:CanPlayerDropItem (client, item)"
    ##### sv_PLUGIN:CanPlayerDropItem {#plugincanplayerdropitem}
    Check if a player can drop an item.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player

    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Return false to block dropping



???+ realm-server "<a id=PLUGIN:CanPlayerInteractItem></a>PLUGIN:CanPlayerInteractItem (client, action, item)"
    ##### sv_PLUGIN:CanPlayerInteractItem {#plugincanplayerinteractitem}
    Check if a player can interact with an item.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">action</span>
     The action name

    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Return false to block interaction



???+ realm-server "<a id=PLUGIN:CanPlayerTakeItem></a>PLUGIN:CanPlayerTakeItem (client, item)"
    ##### sv_PLUGIN:CanPlayerTakeItem {#plugincanplayertakeitem}
    Check if a player can take an item.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player

    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Return false to block taking



???+ realm-server "<a id=PLUGIN:CreateDefaultInventory></a>PLUGIN:CreateDefaultInventory (character)"
    ##### sv_PLUGIN:CreateDefaultInventory {#plugincreatedefaultinventory}
    Creates a default inventory for a character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The character


    <h3>Returns:</h3>
    Inventory The created inventory



???+ realm-server "<a id=PLUGIN:CreateInventoryPanel></a>PLUGIN:CreateInventoryPanel (inventory, parent)"
    ##### sv_PLUGIN:CreateInventoryPanel {#plugincreateinventorypanel}
    Creates the inventory UI panel.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Inventory</span></span>
    <span class="parameter">inventory</span>
     The inventory

    <span class="types"><span class="type">Panel</span></span>
    <span class="parameter">parent</span>
     Optional parent panel


    <h3>Returns:</h3>
    panel The created panel



???+ realm-server "<a id=PLUGIN:GetDefaultInventoryType></a>PLUGIN:GetDefaultInventoryType (character)"
    ##### sv_PLUGIN:GetDefaultInventoryType {#plugingetdefaultinventorytype}
    Determines the inventory type for a character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The character


    <h3>Returns:</h3>
    string Inventory type ID



???+ realm-shared "<a id=PLUGIN:OnInventoryCreated></a>PLUGIN:OnInventoryCreated (inventory)"
    ##### sh_PLUGIN:OnInventoryCreated {#pluginoninventorycreated}
    Called when an inventory is created.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    <span class="parameter">inventory</span>
     The new inventory



???+ realm-shared "<a id=PLUGIN:OnInventoryDeleted></a>PLUGIN:OnInventoryDeleted (id)"
    ##### sh_PLUGIN:OnInventoryDeleted {#pluginoninventorydeleted}
    Called when an inventory is deleted.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     The inventory ID



???+ realm-shared "<a id=PLUGIN:OnInventoryLoaded></a>PLUGIN:OnInventoryLoaded (inventory)"
    ##### sh_PLUGIN:OnInventoryLoaded {#pluginoninventoryloaded}
    Called when an inventory is loaded.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    <span class="parameter">inventory</span>
     The loaded inventory



## Item lifecycle hooks

???+ realm-client "<a id=PLUGIN:ItemShowEntityMenu></a>PLUGIN:ItemShowEntityMenu (entity)"
    ##### cl_PLUGIN:ItemShowEntityMenu {#pluginitemshowentitymenu}
    Shows the item entity menu.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">entity</span>






???+ realm-shared "<a id=PLUGIN:OnItemCreated></a>PLUGIN:OnItemCreated (item)"
    ##### sh_PLUGIN:OnItemCreated {#pluginonitemcreated}
    Called when an item is created.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item



???+ realm-shared "<a id=PLUGIN:OnItemRegistered></a>PLUGIN:OnItemRegistered (item)"
    ##### sh_PLUGIN:OnItemRegistered {#pluginonitemregistered}
    Called after an item is registered.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item definition



## Salary/Money Hooks

???+ realm-server "<a id=PLUGIN:CreateSalaryTimer></a>PLUGIN:CreateSalaryTimer (client)"
    ##### sv_PLUGIN:CreateSalaryTimer {#plugincreatesalarytimer}
    Creates a salary timer for a player.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player



???+ realm-server "<a id=PLUGIN:GetSalaryAmount></a>PLUGIN:GetSalaryAmount (client, faction, class)"
    ##### sv_PLUGIN:GetSalaryAmount {#plugingetsalaryamount}
    Gets the salary amount for a player.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">faction</span>
     Faction table

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">class</span>
     Class table


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Amount



???+ realm-server "<a id=PLUGIN:GetSalaryInterval></a>PLUGIN:GetSalaryInterval (client, faction)"
    ##### sv_PLUGIN:GetSalaryInterval {#plugingetsalaryinterval}
    Gets the salary interval.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">faction</span>
     Faction table


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Interval



???+ realm-server "<a id=PLUGIN:GetSalaryLimit></a>PLUGIN:GetSalaryLimit (client, faction, class)"
    ##### sv_PLUGIN:GetSalaryLimit {#plugingetsalarylimit}
    Gets the salary cap.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">faction</span>
     Faction table

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">class</span>
     Class table


    <h3>Returns:</h3>
    number Limit



???+ realm-shared "<a id=PLUGIN:OnPickupMoney></a>PLUGIN:OnPickupMoney (client, moneyEntity)"
    ##### sh_PLUGIN:OnPickupMoney {#pluginonpickupmoney}
    Called when a player picks up money
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Player picking up

    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">moneyEntity</span>
     Money entity being picked up



## Plugin system

???+ realm-shared "<a id=PLUGIN:DoPluginIncludes></a>PLUGIN:DoPluginIncludes (path, PLUGIN)"
    ##### sh_PLUGIN:DoPluginIncludes {#plugindopluginincludes}
    Loads extra plugin files.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">path</span>
     Directory path

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">PLUGIN</span>
     The plugin table



???+ realm-shared "<a id=PLUGIN:InitializedItems></a>PLUGIN:InitializedItems ()"
    ##### sh_PLUGIN:InitializedItems {#plugininitializeditems}
    Called after all items have loaded.

???+ realm-shared "<a id=PLUGIN:InitializedPlugins></a>PLUGIN:InitializedPlugins ()"
    ##### sh_PLUGIN:InitializedPlugins {#plugininitializedplugins}
    Called after plugins are initialized.

???+ realm-shared "<a id=PLUGIN:InitializedSchema></a>PLUGIN:InitializedSchema ()"
    ##### sh_PLUGIN:InitializedSchema {#plugininitializedschema}
    Called after schema is initialized.

???+ realm-shared "<a id=PLUGIN:OnMySQLOOConnected></a>PLUGIN:OnMySQLOOConnected ()"
    ##### sh_PLUGIN:OnMySQLOOConnected {#pluginonmysqlooconnected}
    Called when MySQLOO connects.

???+ realm-shared "<a id=PLUGIN:PluginLoaded></a>PLUGIN:PluginLoaded (uniqueID, PLUGIN)"
    ##### sh_PLUGIN:PluginLoaded {#pluginpluginloaded}
    Called after plugin is loaded.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     The plugin ID

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">PLUGIN</span>
     The plugin table



???+ realm-shared "<a id=PLUGIN:PluginShouldLoad></a>PLUGIN:PluginShouldLoad (uniqueID)"
    ##### sh_PLUGIN:PluginShouldLoad {#pluginpluginshouldload}
    Decides whether plugin should load.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Plugin ID


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Return false to block load



???+ realm-shared "<a id=PLUGIN:RegisterPreparedStatements></a>PLUGIN:RegisterPreparedStatements ()"
    ##### sh_PLUGIN:RegisterPreparedStatements {#pluginregisterpreparedstatements}
    Called when prepared statements should be registered.

???+ realm-shared "<a id=PLUGIN:OnLoadTables></a>PLUGIN:OnLoadTables ()"
    ##### sh_PLUGIN:OnLoadTables {#pluginonloadtables}
    Called when DB tables are loading.

???+ realm-shared "<a id=PLUGIN:NutScriptTablesLoaded></a>PLUGIN:NutScriptTablesLoaded ()"
    ##### sh_PLUGIN:NutScriptTablesLoaded {#pluginnutscripttablesloaded}
    Called when DB tables are loaded.

???+ realm-server "<a id=PLUGIN:OnWipeTables></a>PLUGIN:OnWipeTables ()"
    ##### sv_PLUGIN:OnWipeTables {#pluginonwipetables}
    Called when DB tables are being wiped.

???+ realm-shared "<a id=PLUGIN:SetupDatabase></a>PLUGIN:SetupDatabase ()"
    ##### sh_PLUGIN:SetupDatabase {#pluginsetupdatabase}
    Sets up DB config.

## Client-side UI

???+ realm-client "<a id=PLUGIN:ScreenResolutionChanged></a>PLUGIN:ScreenResolutionChanged (oldW, oldH)"
    ##### cl_PLUGIN:ScreenResolutionChanged {#pluginscreenresolutionchanged}
    Called when the screen resolution changes.
	 This is triggered by a timer that checks resolution every second.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">oldW</span>
     Previous screen width

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">oldH</span>
     Previous screen height



???+ realm-client "<a id=PLUGIN:CharacterListLoaded></a>PLUGIN:CharacterListLoaded ()"
    ##### cl_PLUGIN:CharacterListLoaded {#plugincharacterlistloaded}
    Shows character list loaded.

???+ realm-client "<a id=PLUGIN:CreateLoadingScreen></a>PLUGIN:CreateLoadingScreen ()"
    ##### cl_PLUGIN:CreateLoadingScreen {#plugincreateloadingscreen}
    Creates loading screen.

???+ realm-client "<a id=PLUGIN:LoadNutFonts></a>PLUGIN:LoadNutFonts (font, genericFont, configFont)"
    ##### cl_PLUGIN:LoadNutFonts {#pluginloadnutfonts}
    Loads fonts.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">font</span>
     Main font

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">genericFont</span>
     Secondary font

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">configFont</span>
     Config font



???+ realm-client "<a id=PLUGIN:NutScriptLoaded></a>PLUGIN:NutScriptLoaded ()"
    ##### cl_PLUGIN:NutScriptLoaded {#pluginnutscriptloaded}
    Framework loaded.

???+ realm-client "<a id=PLUGIN:ShouldDrawEntityInfo></a>PLUGIN:ShouldDrawEntityInfo (entity)"
    ##### cl_PLUGIN:ShouldDrawEntityInfo {#pluginshoulddrawentityinfo}
    Checks if info should draw.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
     The entity


    <h3>Returns:</h3>
    bool Should draw info



???+ realm-client "<a id=PLUGIN:ShouldCreateLoadingScreen></a>PLUGIN:ShouldCreateLoadingScreen ()"
    ##### cl_PLUGIN:ShouldCreateLoadingScreen {#pluginshouldcreateloadingscreen}
    Checks if loading screen should appear.

???+ realm-client "<a id=PLUGIN:SetupQuickMenu></a>PLUGIN:SetupQuickMenu (menu)"
    ##### cl_PLUGIN:SetupQuickMenu {#pluginsetupquickmenu}
    Sets up quick menu.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Derma</span></span>
    <span class="parameter">menu</span>
     Quick menu panel



???+ realm-client "<a id=PLUGIN:DrawNutModelView></a>PLUGIN:DrawNutModelView (panel, ent)"
    ##### cl_PLUGIN:DrawNutModelView {#plugindrawnutmodelview}
    Draws model view in panel.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Derma</span></span>
    <span class="parameter">panel</span>
     Model panel

    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">ent</span>
     Entity



## Logging

???+ realm-server "<a id=PLUGIN:OnServerLog></a>PLUGIN:OnServerLog (client, logType, ...)"
    ##### sv_PLUGIN:OnServerLog {#pluginonserverlog}
    Server log output.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The client

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">logType</span>
     Log type

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Extra data



## Bot hooks

???+ realm-server "<a id=PLUGIN:SetupBotCharacter></a>PLUGIN:SetupBotCharacter (client)"
    ##### sv_PLUGIN:SetupBotCharacter {#pluginsetupbotcharacter}
    Sets up bot character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The bot



???+ realm-server "<a id=PLUGIN:SetupBotInventory></a>PLUGIN:SetupBotInventory (client, character)"
    ##### sv_PLUGIN:SetupBotInventory {#pluginsetupbotinventory}
    Sets up bot inventory.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The bot

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The bot character



## Combat system

???+ realm-server "<a id=PLUGIN:PlayerGetFistDamage></a>PLUGIN:PlayerGetFistDamage (client, damage, context)"
    ##### sv_PLUGIN:PlayerGetFistDamage {#pluginplayergetfistdamage}
    Gets damage for fist SWEP.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The attacker

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">damage</span>
     Default damage

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">context</span>
     Damage context



## Attribute system

???+ realm-shared "<a id=PLUGIN:OnCharAttribBoosted></a>PLUGIN:OnCharAttribBoosted (client, character, attribID, boostID, boostAmount)"
    ##### sh_PLUGIN:OnCharAttribBoosted {#pluginoncharattribboosted}
    Called on attribute boost.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The client

    <span class="types"><span class="type">Character</span></span>
    <span class="parameter">character</span>
     The character

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">attribID</span>
     Attribute ID

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">boostID</span>
     Boost ID

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">boostAmount</span>
     Boost value



## Fallover

???+ realm-shared "<a id=PLUGIN:OnCharFallover></a>PLUGIN:OnCharFallover (client, ragdoll, fellover)"
    ##### sh_PLUGIN:OnCharFallover {#pluginoncharfallover}
    Called when fallover state changes.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The client

    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">ragdoll</span>
     The ragdoll

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">fellover</span>
     Is ragdolled



## Class hooks

???+ realm-shared "<a id=PLUGIN:OnPlayerJoinClass></a>PLUGIN:OnPlayerJoinClass (client, class, oldClass)"
    ##### sh_PLUGIN:OnPlayerJoinClass {#pluginonplayerjoinclass}
    Called when a player changes classes.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player changing classes

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">class</span>
     New class index

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">oldClass</span>
     Previous class index



