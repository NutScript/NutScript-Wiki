# Client
Base class for players.

The client, aka the [Player](https://wiki.facepunch.com/gmod/Player), represents the base entity controlled by the physical player.
A client can have more than one character attached, but a character can have no more and no less than 1 client attached.

Functions and meta-methods defined in Gmod outside of NutScript typically target the client.
## Methods
??? realm-shared "<a id=Client:steamName></a>Client:steamName ()"
    ##### Client:steamName {#clientsteamname}
    Returns the players Steam name.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The player's Steam name.



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/client#clientsteamname">SteamName</a></li>
    </ul>
??? realm-shared "<a id=Client:SteamName></a>Client:SteamName ()"
    ##### Client:SteamName {#clientsteamname}
    Returns the players Steam name.  Alias to Player:steamName().
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The player's Steam name.



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/client#clientsteamname">steamName</a></li>
    </ul>
??? realm-shared "<a id=Client:Nick></a>Client:Nick ()"
    ##### Client:Nick {#clientnick}
    Returns the name of the player's character, or the player's Steam name if the character is not available.  Alias to Player:Name().
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The name of the player's character or the player's Steam name if no character is available.



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/client#clientgetname">GetName</a></li>
    </ul>
??? realm-shared "<a id=Client:GetName></a>Client:GetName ()"
    ##### Client:GetName {#clientgetname}
    Returns the name of the player's character, or the player's Steam name if the character is not available.  Alias to Player:Name().
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The name of the player's character or the player's Steam name if no character is available.



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/client#clientnick">Nick</a></li>
    </ul>
## Animation-related methods

??? realm-shared "<a id=Client:forceSequence></a>Client:forceSequence (sequence, callback, time, noFreeze)"
    ##### Client:forceSequence {#clientforcesequence}
    Forces the player to play a specific animation sequence.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">sequence</span>
     Name of the sequence to play

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Function to call when sequence ends

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">time</span>
    <em><ins>`optional`</ins></em>
     Duration to play the sequence (defaults to sequence duration)

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noFreeze</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to keep player movable during animation


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span> or <span class="type">bool</span></span>
    Duration of sequence if valid, false otherwise



??? realm-shared "<a id=Client:leaveSequence></a>Client:leaveSequence ()"
    ##### Client:leaveSequence {#clientleavesequence}
    Stops the player's current forced animation sequence.

??? realm-shared "<a id=Client:doGesture></a>Client:doGesture (a, b, c)"
    ##### Client:doGesture {#clientdogesture}
    Performs a gesture animation and syncs it to other players.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">a</span>
     Gesture slot or activity

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">b</span>
     Gesture animation ID

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">c</span>
     Whether to auto-restart the gesture



## Character-related methods

??? realm-shared "<a id=Client:getChar></a>Client:getChar ()"
    ##### Client:getChar {#clientgetchar}
    Returns the character associated with the player.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    The character object associated with the player, or nil if no character is associated.



??? realm-shared "<a id=Client:Name></a>Client:Name ()"
    ##### Client:Name {#clientname}
    Returns the name of the player's character, or the player's Steam name if the character is not available.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The name of the player's character or the player's Steam name if no character is available.



## Class-related methods

??? realm-shared "<a id=Client:getClass></a>Client:getClass ()"
    ##### Client:getClass {#clientgetclass}
    Gets player's current class ID
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    Class ID if has character


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no character



??? realm-shared "<a id=Client:getClassData></a>Client:getClassData ()"
    ##### Client:getClassData {#clientgetclassdata}
    Gets player's current class data
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Class definition table if has character and class


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no character or class



## Currency-related methods

??? realm-server "<a id=Client:addMoney></a>Client:addMoney (amt)"
    ##### Client:addMoney {#clientaddmoney}
    Adds money to the player's character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amt</span>
     Amount to add



??? realm-server "<a id=Client:takeMoney></a>Client:takeMoney (amt)"
    ##### Client:takeMoney {#clienttakemoney}
    Removes money from the player's character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amt</span>
     Amount to subtract



??? realm-server "<a id=Client:getMoney></a>Client:getMoney ()"
    ##### Client:getMoney {#clientgetmoney}
    Gets the amount of money the player's character has.
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    Amount of money



??? realm-server "<a id=Client:canAfford></a>Client:canAfford (amount)"
    ##### Client:canAfford {#clientcanafford}
    Checks if the player's character can afford a given amount.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     Amount to check


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if the character has enough money



## Player data methods

??? realm-shared "<a id=Client:getNutData></a>Client:getNutData (key, default)"
    ##### Client:getNutData {#clientgetnutdata}
    Gets NutScript-specific player data
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
    <em><ins>`optional`</ins></em>
     Specific data key to retrieve

    <span class="types">vararg</span>
    <span class="parameter">default</span>
     Default value if key not found


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    All player data when key is true


     <h4>Or</h4>
    <span class="types"><span class="type">any</span></span>
    Specific data value when key provided


     <h4>Or</h4>
    <span class="types"><span class="type">any</span></span>
    Default value when key not found



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        local playTime = client:getNutData("playTime", 0)
		local allData = client:getNutData(true)

        ```
    </ul>
??? realm-server "<a id=Client:syncVars></a>Client:syncVars ()"
    ##### Client:syncVars {#clientsyncvars}
    Synchronizes all networked variables to this client.
	 Called when a player first spawns.

??? realm-server "<a id=Client:setLocalVar></a>Client:setLocalVar (key, value)"
    ##### Client:setLocalVar {#clientsetlocalvar}
    Sets a networked variable that is only visible to this client.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Variable name

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     Variable value



??? realm-shared "<a id=Client:getLocalVar></a>Client:getLocalVar (key, default)"
    ##### Client:getLocalVar {#clientgetlocalvar}
    Retrieves a networked variable from a client.
	 The clientside version of the function can only return data that was previously networked to the client.
	 Returns a default value if the variable is not set.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The variable name

    <span class="types">vararg</span>
    <span class="parameter">default</span>
    <em><ins>`optional`</ins></em>
     A fallback value to return if the key is not present


    <h3>Returns:</h3>
    <span class="types"><span class="type">vararg</span></span>
    The stored value or the default



??? realm-server "<a id=Client:loadNutData></a>Client:loadNutData (callback)"
    ##### Client:loadNutData {#clientloadnutdata}
    Loads persistent NutScript-specific data for the player from the database.
	 If no data exists, inserts a new entry. Calls the callback with the result.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     A function to call with the loaded data table



??? realm-server "<a id=Client:saveNutData></a>Client:saveNutData ()"
    ##### Client:saveNutData {#clientsavenutdata}
    Saves the player's NutScript-specific data to the database.
	 Updates name, last join timestamp, and data blob.

??? realm-server "<a id=Client:setNutData></a>Client:setNutData (key, value, noNetworking)"
    ##### Client:setNutData {#clientsetnutdata}
    Sets a specific key in the player's persistent data and optionally sends it to the client.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The key to set

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     The value to store

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noNetworking</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, skip sending the value to the client



## Faction-related methods

??? realm-shared "<a id=Client:hasWhitelist></a>Client:hasWhitelist (faction)"
    ##### Client:hasWhitelist {#clienthaswhitelist}
    Checks if player has whitelist for a faction
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">faction</span>
     Faction ID to check


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether player is whitelisted



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        if client:hasWhitelist(FACTION_OTA) then print("Whitelisted") end

        ```
    </ul>
??? realm-server "<a id=Client:setWhitelisted></a>Client:setWhitelisted (faction, whitelisted)"
    ##### Client:setWhitelisted {#clientsetwhitelisted}
    Sets the player's whitelist status for a given faction.
	 Stores whitelist info under the current schema namespace.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">faction</span>
     The faction index

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">whitelisted</span>
     Whether the player is whitelisted


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if the faction was valid and updated, false otherwise



## Item-related methods

??? realm-shared "<a id=Client:getItems></a>Client:getItems ()"
    ##### Client:getItems {#clientgetitems}
    Gets all items from player's inventory
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    List of item objects if has character


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no character or inventory



## General Utility Methods

Provides various helper methods for player state, model analysis, weapon restrictions, and spatial queries.
??? realm-shared "<a id=Client:getPlayTime></a>Client:getPlayTime ()"
    ##### Client:getPlayTime {#clientgetplaytime}
    Returns how many seconds the player has spent on the server.
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    Total play time in seconds



??? realm-shared "<a id=Client:isRunning></a>Client:isRunning ()"
    ##### Client:isRunning {#clientisrunning}
    Checks if the player is moving faster than their walking speed.
    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if running



??? realm-shared "<a id=Client:isFemale></a>Client:isFemale ()"
    ##### Client:isFemale {#clientisfemale}
    Checks if the player has a female model.
	 Uses model name patterns and animation class.
    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if player model is recognized as female



??? realm-shared "<a id=Client:getItemDropPos></a>Client:getItemDropPos ()"
    ##### Client:getItemDropPos {#clientgetitemdroppos}
    Returns a good position in front of the player for an entity.
	 Uses a forward trace and surface offset to avoid intersections.
    <h3>Returns:</h3>
    <span class="types"><span class="type">vector</span></span>
    Position to drop item



??? realm-server "<a id=Client:setRestricted></a>Client:setRestricted (state, noMessage)"
    ##### Client:setRestricted {#clientsetrestricted}
    Restricts or unrestricts the player from interaction and weapons.
	 Removes weapons and disables input if restricted. Restores state on unrestrict.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">state</span>
     True to restrict, false to unrestrict

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noMessage</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, disables restriction messages



## Player Action Utilities

Provides helper functions for performing timed and conditional actions on players, such as progress bars and stare-based interactions.
??? realm-server "<a id=Client:setAction></a>Client:setAction (text, time, callback, startTime, finishTime)"
    ##### Client:setAction {#clientsetaction}
    Sets a timed action for the player with a visual progress bar.
	 Cancels any existing action timer if `text` is false.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">text</span>
     Text (<a href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a>) to display or <code>false</code> (<code>bool</code>) to cancel

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">time</span>
    <em><ins>`optional. default`: `5`</ins></em>
     Duration of the action in seconds

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Called when the action completes

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">startTime</span>
    <em><ins>`optional`</ins></em>
     Custom start time (default is CurTime())

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">finishTime</span>
    <em><ins>`optional`</ins></em>
     Custom finish time (default is start + time)



??? realm-server "<a id=Client:doStaredAction></a>Client:doStaredAction (entity, callback, time, onCancel, distance)"
    ##### Client:doStaredAction {#clientdostaredaction}
    Performs a timed action while the player stares at an entity.
	 Cancels if the player looks away or either entity becomes invalid.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
     The entity the player must look at

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Called on successful completion

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">time</span>
     Duration to stare

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onCancel</span>
    <em><ins>`optional`</ins></em>
     Called if the stare is interrupted or cancelled

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">distance</span>
    <em><ins>`optional. default`: `96`</ins></em>
     Maximum trace distance the player may be from the entity



## Ragdoll and Position Utilities

Adds ragdolling, stuck detection, and spatial logic for positioning and restoring players.
??? realm-server "<a id=Client:isStuck></a>Client:isStuck ()"
    ##### Client:isStuck {#clientisstuck}
    Checks if the player is stuck in geometry.
    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if the player is inside solid geometry



??? realm-server "<a id=Client:createRagdoll></a>Client:createRagdoll (freeze)"
    ##### Client:createRagdoll {#clientcreateragdoll}
    Creates a ragdoll copy of the player at their current position.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">freeze</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to freeze ragdoll physics


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a></span>
    The created ragdoll entity



??? realm-server "<a id=Client:setRagdolled></a>Client:setRagdolled (state, time, getUpGrace)"
    ##### Client:setRagdolled {#clientsetragdolled}
    Ragdolls or un-ragdolls the player.
	 Handles weapon storing/restoring, positioning, and state.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">state</span>
     True to ragdoll, false to unragdoll

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">time</span>
    <em><ins>`optional`</ins></em>
     Duration in seconds to stay ragdolled

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">getUpGrace</span>
    <em><ins>`optional`</ins></em>
     Grace period before reactivating player



