Base character class.
 A character is a unique entity tied to a player client. Each client can have multiple characters.
The character stores information that is relevant to the gameplay, but not specific to the player themselves, for instance: their model, name, description, inventory, etc.

All characters that a player owns are loaded into server memory upon the client connecting.

## Functions
???+ realm-server "<a id=CHAR:save></a>CHAR:save (callback)"
    ##### sv_CHAR:save {#charsave}
    Saves the character to the database and calls the callback if provided.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Callback when character saved on database



???+ realm-server "<a id=CHAR:sync></a>CHAR:sync (receiver)"
    ##### sv_CHAR:sync {#charsync}
    Sends character information to the receiver.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../Client#">Client</a></span>
    <span class="parameter">receiver</span>
    <em><ins>optional</ins></em>
     who will receive synchronization, nil - so that all players receive.



???+ realm-server "<a id=CHAR:setup></a>CHAR:setup (noNetworking)"
    ##### sv_CHAR:setup {#charsetup}
    Sets up the "appearance" related information for the character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noNetworking</span>
     responsible for character synchronization



???+ realm-server "<a id=CHAR:kick></a>CHAR:kick ()"
    ##### sv_CHAR:kick {#charkick}
    Forces the player to choose a character.

???+ realm-server "<a id=CHAR:ban></a>CHAR:ban (time)"
    ##### sv_CHAR:ban {#charban}
    Prevents the use of this character permanently or for a certain amount of time.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">time</span>
     Сharacter ban time



    <h3>Usage:</h3>
    <ul>
        ```lua
        Entity(1):getChar():ban(3600) -- will send a character owned by a player with index 1 to a ban

        ```
    </ul>
???+ realm-server "<a id=CHAR:delete></a>CHAR:delete ()"
    ##### sv_CHAR:delete {#chardelete}
    Deletes this character from existence along with its associated data.

???+ realm-server "<a id=CHAR:destroy></a>CHAR:destroy ()"
    ##### sv_CHAR:destroy {#chardestroy}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Deletes this character from memory.

???+ realm-shared "<a id=CHAR:getPlayer></a>CHAR:getPlayer ()"
    ##### sh_CHAR:getPlayer {#chargetplayer}
    Returns which player owns this character.
    <h3>Returns:</h3>
    <span class="types"><span class="type">player</span></span>
    The player who owns need character


    <h3>Usage:</h3>
    <ul>
        ```lua
        local charOwner = Entity(1):getChar():getPlayer()
		charOwner:notify('test')

        ```
    </ul>
