Library functions for character.


We are a leading progressive organization, transforming the educational paradigm. Our community consists of thriving students, committed families, and an inspired team, all connected to diverse local and global networks, proud to be part of The Island School.
## Functions
???+ realm-shared "<a id=nut.char.new></a>nut.char.new (data, id, client, steamID)"
    ##### sh_nut.char.new {#nut.char.new}
    Creates a new character object with the given data and metadata.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     A table containing the character data.

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     The ID of the character.

    <span class="types"><a class="type" href="../Client#">Client</a></span>
    <span class="parameter">client</span>
     The player associated with the character.

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">steamID</span>
    <em><ins>optional</ins></em>
     The SteamID of the player associated with the character.


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    The newly created character object.


???+ realm-shared "<a id=playerMeta:getChar></a>playerMeta:getChar ()"
    ##### sh_playerMeta:getChar {#playermetagetchar}
    Returns the character associated with the player.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    The character object associated with the player, or nil if no character is associated.


???+ realm-shared "<a id=playerMeta:Name></a>playerMeta:Name ()"
    ##### sh_playerMeta:Name {#playermetaname}
    Returns the name of the player's character, or the player's Steam name if the character is not available.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The name of the player's character or the player's Steam name if no character is available.


???+ realm-shared "<a id=nut.char.registerVar></a>nut.char.registerVar (key, data)"
    ##### sh_nut.char.registerVar {#nut.char.registervar}
    Sets up a new character variable.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     A Unique key for the variable

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Variable Data



## Fields
???+ realm-shared "<a id=playerMeta.steamName></a>playerMeta.steamName"
    ##### sh_playerMeta.steamName {#playermeta.steamname}
    Returns the players Steam name.

???+ realm-shared "<a id=playerMeta.SteamName></a>playerMeta.SteamName"
    ##### sh_playerMeta.SteamName {#playermeta.steamname}
    Returns the players Steam name.  Alias to Player:steamName().

???+ realm-shared "<a id=playerMeta.Nick></a>playerMeta.Nick"
    ##### sh_playerMeta.Nick {#playermeta.nick}
    Returns the name of the player's character, or the player's Steam name if the character is not available.  Alias to Player:Name().

???+ realm-shared "<a id=playerMeta.GetName></a>playerMeta.GetName"
    ##### sh_playerMeta.GetName {#playermeta.getname}
    Returns the name of the player's character, or the player's Steam name if the character is not available.  Alias to Player:Name().

