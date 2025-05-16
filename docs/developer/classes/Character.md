Base character class.
 A character is a unique entity tied to a player client. Each client can have multiple characters.
The character stores information that is relevant to the gameplay, but not specific to the player themselves, for instance: their model, name, description, inventory, etc.

All characters that a player owns are loaded into server memory upon the client connecting.

## Methods
???+ realm-server "<a id=character:save></a>character:save (callback)"
    ##### sv_character:save {#charactersave}
    Saves the character to the database and calls the callback if provided.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Callback when character saved on database



???+ realm-server "<a id=character:sync></a>character:sync (receiver)"
    ##### sv_character:sync {#charactersync}
    Sends character information to the receiver.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../Client#">Client</a></span>
    <span class="parameter">receiver</span>
    <em><ins>optional</ins></em>
     who will receive synchronization, nil - so that all players receive.



???+ realm-server "<a id=character:setup></a>character:setup (noNetworking)"
    ##### sv_character:setup {#charactersetup}
    Sets up the "appearance" related information for the character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noNetworking</span>
     responsible for character synchronization



???+ realm-server "<a id=character:kick></a>character:kick ()"
    ##### sv_character:kick {#characterkick}
    Forces the player to choose a character.

???+ realm-server "<a id=character:ban></a>character:ban (time)"
    ##### sv_character:ban {#characterban}
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
???+ realm-server "<a id=character:delete></a>character:delete ()"
    ##### sv_character:delete {#characterdelete}
    Deletes this character from existence along with its associated data.

???+ realm-server "<a id=character:destroy></a>character:destroy ()"
    ##### sv_character:destroy {#characterdestroy}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Deletes this character from memory.

???+ realm-shared "<a id=character:getPlayer></a>character:getPlayer ()"
    ##### sh_character:getPlayer {#charactergetplayer}
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
