# nut.faction
Faction System.

Handles player factions/teams including whitelists, models, and team management. Factions are just a wrapper over the normal ```team``` library. Essentially, each faction associates a table with a team. So, extra information can be stored for teams (e.g. salary, descriptions, etc...).
See also [Faction Development](../../../guides/development/factions/)
## Functions
???+ realm-shared "<a id=nut.faction.loadFromDir></a>nut.faction.loadFromDir (directory)"
    ##### sh_nut.faction.loadFromDir {#nut.faction.loadfromdir}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Loads faction definitions from a directory
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Path to scan for faction files



???+ realm-shared "<a id=nut.faction.get></a>nut.faction.get (identifier)"
    ##### sh_nut.faction.get {#nut.faction.get}
    Gets a faction by index or uniqueID
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">identifier</span>
     Faction index (int) or uniqueID (string)


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Faction definition table



???+ realm-shared "<a id=nut.faction.getIndex></a>nut.faction.getIndex (uniqueID)"
    ##### sh_nut.faction.getIndex {#nut.faction.getindex}
    Gets a faction's numeric index by uniqueID
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Faction uniqueID


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Faction index



???+ realm-shared "<a id=nut.faction.formatModelData></a>nut.faction.formatModelData ()"
    ##### sh_nut.faction.formatModelData {#nut.faction.formatmodeldata}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Formats the bodygroup data into a uniform style.<br>
	This allows bodygroup data per model to be submitted in 3 ways:<br>
	<ol>
	<li>As a string `("0121200")`</li>
	<li>As a table with the bodygroup ID as the key `{[1] = 2, [2] = 1, [3] = 2, [4] = 0}`</li>
	<li>As a table with the bodygroup name as the key `{head = 2, shoulders = 1, knees = 2, toes = 0}`</li>
	</ol>

???+ realm-client "<a id=nut.faction.hasWhitelist></a>nut.faction.hasWhitelist (faction)"
    ##### cl_nut.faction.hasWhitelist {#nut.faction.haswhitelist}
    Checks if local player has whitelist for a faction
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">faction</span>
     Faction index to check


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether player has whitelist



