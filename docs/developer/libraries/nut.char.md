# nut.char
Character Management Library.


This module provides core logic for character creation, storage, validation, and synchronization
in the NutScript framework. It manages character variables, metadata, and interactions across
the server and client, enabling features like whitelisting, model selection, faction assignment,
and inventory linking.
## Functions
??? realm-server "<a id=nut.char.create></a>nut.char.create (data, callback)"
    ##### sv_nut.char.create {#nut.char.create}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Creates a new character in the database with the given data.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     The character data table (name, model, faction, etc.)

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Callback function triggered after creation (receives charID)



??? realm-server "<a id=nut.char.restore></a>nut.char.restore (client, callback, noCache, id)"
    ##### sv_nut.char.restore {#nut.char.restore}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Restores a player's characters from the database.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player whose characters are being restored

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Function to call when restoration is complete

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noCache</span>
    <em><ins>`optional`</ins></em>
     If true, skips caching (unused in current implementation)

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">id</span>
    <em><ins>`optional`</ins></em>
     Specific character ID to restore



??? realm-server "<a id=nut.char.cleanUpForPlayer></a>nut.char.cleanUpForPlayer (client)"
    ##### sv_nut.char.cleanUpForPlayer {#nut.char.cleanupforplayer}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Cleans up all character data for a player when they disconnect.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player whose character data should be cleaned up



??? realm-server "<a id=nut.char.delete></a>nut.char.delete (id, client)"
    ##### sv_nut.char.delete {#nut.char.delete}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Deletes a character from the database and cleans up related data.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">id</span>
     The character ID to delete

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
    <em><ins>`optional`</ins></em>
     Player associated with the character



??? realm-shared "<a id=nut.char.new></a>nut.char.new (data, id, client, steamID)"
    ##### sh_nut.char.new {#nut.char.new}
    Creates a new character object with the given data and metadata.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     A table containing the character data.

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     The ID of the character.

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player associated with the character.

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">steamID</span>
    <em><ins>`optional`</ins></em>
     The SteamID of the player associated with the character.


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    The newly created character object.



??? realm-shared "<a id=nut.char.registerVar></a>nut.char.registerVar (key, data)"
    ##### sh_nut.char.registerVar {#nut.char.registervar}
    Sets up a new character variable.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     A Unique key for the variable

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Variable Data



