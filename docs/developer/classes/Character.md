# Character
Base character class.
 A character is a unique entity tied to a player client. Each client can have multiple characters.
The character stores information that is relevant to the gameplay, but not specific to the player themselves, for instance: their model, name, description, inventory, etc.

All characters that a player owns are loaded into server memory upon the client connecting.

## Methods
??? realm-server "<a id=Character:save></a>Character:save (callback)"
    ##### Character:save {#charactersave}
    Saves the character to the database and calls the callback if provided.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Callback when character saved on database



??? realm-server "<a id=Character:sync></a>Character:sync (receiver)"
    ##### Character:sync {#charactersync}
    Sends character information to the receiver.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receiver</span>
    <em><ins>`optional`</ins></em>
     who will receive synchronization, nil - so that all players receive.



??? realm-server "<a id=Character:setup></a>Character:setup (noNetworking)"
    ##### Character:setup {#charactersetup}
    Sets up the "appearance" related information for the character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noNetworking</span>
     responsible for character synchronization



??? realm-server "<a id=Character:kick></a>Character:kick ()"
    ##### Character:kick {#characterkick}
    Forces the player to choose a character.

??? realm-server "<a id=Character:ban></a>Character:ban (time)"
    ##### Character:ban {#characterban}
    Prevents the use of this character permanently or for a certain amount of time.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">time</span>
     Сharacter ban time



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        Entity(1):getChar():ban(3600) -- will send a character owned by a player with index 1 to a ban

        ```
    </ul>
??? realm-server "<a id=Character:delete></a>Character:delete ()"
    ##### Character:delete {#characterdelete}
    Deletes this character from existence along with its associated data.

??? realm-server "<a id=Character:destroy></a>Character:destroy ()"
    ##### Character:destroy {#characterdestroy}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Deletes this character from memory.

??? realm-shared "<a id=Character:getPlayer></a>Character:getPlayer ()"
    ##### Character:getPlayer {#charactergetplayer}
    Returns which player owns this character.
    <h3>Returns:</h3>
    <span class="types"><span class="type">player</span></span>
    The player who owns need character



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        local charOwner = Entity(1):getChar():getPlayer()
		charOwner:notify('test')

        ```
    </ul>
## Class-related methods

??? realm-shared "<a id=Character:joinClass></a>Character:joinClass (class, isForced)"
    ##### Character:joinClass {#characterjoinclass}
    Makes a character join a class
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">class</span>
     Class index to join

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">isForced</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Bypass restrictions if true


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether join was successful



??? realm-shared "<a id=Character:kickClass></a>Character:kickClass ()"
    ##### Character:kickClass {#characterkickclass}
    Removes character from current class (joins default)

## Currency-related methods

??? realm-shared "<a id=Character:hasMoney></a>Character:hasMoney (amount)"
    ##### Character:hasMoney {#characterhasmoney}
    Checks if character has sufficient funds
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     Amount to check


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether character has enough money



??? realm-shared "<a id=Character:giveMoney></a>Character:giveMoney (amount, takingMoney)"
    ##### Character:giveMoney {#charactergivemoney}
    Gives money to character
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     Amount to give

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">takingMoney</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Internal flag to skip logging


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Always returns true



??? realm-shared "<a id=Character:takeMoney></a>Character:takeMoney (amount)"
    ##### Character:takeMoney {#charactertakemoney}
    Takes money from character
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     Amount to take


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Always returns true



## Flag-related methods

??? realm-server "<a id=Character:setFlags></a>Character:setFlags (flags)"
    ##### Character:setFlags {#charactersetflags}
    Set the flag data to the character, overriding existing flags
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">flags</span>
     New flags string



??? realm-server "<a id=Character:takeFlags></a>Character:takeFlags (flags)"
    ##### Character:takeFlags {#charactertakeflags}
    Remove the flags from the character.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">flags</span>
     Flags to remove



??? realm-shared "<a id=Character:getFlags></a>Character:getFlags ()"
    ##### Character:getFlags {#charactergetflags}
    Gets character's current flags.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Current flags string



??? realm-shared "<a id=Character:hasFlags></a>Character:hasFlags (flags)"
    ##### Character:hasFlags {#characterhasflags}
    Check if the character contains the flags specified.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">flags</span>
     Flags to check for


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether any flag is present



