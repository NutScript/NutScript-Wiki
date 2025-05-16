Base hooks for plugins.
 Hooks are functions that can have code appended to, and are triggered at specific events. [Find out more here](https://wiki.facepunch.com/gmod/Hook_Library_Usage).
NutScript allows you to add hooks via PLUGIN, rather than hook.Add. [You can learn more about it here](../../guides/development/developing_plugins.md#why-plugin).
## Functions
???+ realm-shared "<a id=PLUGIN:OnCharFallover></a>PLUGIN:OnCharFallover (client, ragdoll, fellover)"
    ##### sh_PLUGIN:OnCharFallover {#pluginoncharfallover}
    Called whenever a client's ragdoll/fallover state changes.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../Client#">Client</a></span>
    <span class="parameter">client</span>
     The target player entity

    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">ragdoll</span>
     The ragdoll entity

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">fellover</span>
     True if the client is ragdolled, false otherwise



???+ realm-shared "<a id=PLUGIN:OnCharAttribBoosted></a>PLUGIN:OnCharAttribBoosted (client, character, attribID, boostID, boostAmount)"
    ##### sh_PLUGIN:OnCharAttribBoosted {#pluginoncharattribboosted}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](/developer/plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Called when a character's attrtibute gets boosted.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../Client#">Client</a></span>
    <span class="parameter">client</span>
     The target player Entity

    <span class="types"><a class="type" href="../Character#">Character</a></span>
    <span class="parameter">character</span>
     the client's character

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">attribID</span>
     The ID of the attribute affected

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">boostID</span>
     The ID of the boost applied

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">boostAmount</span>
     Value of the boost applied



