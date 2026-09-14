# Commands
NutScript Command Documentation.



Built-in and bundled-plugin commands registered through `nut.command.add`.
Commands are executed server-side by a player and receive the issuing player plus parsed command arguments.

See also: [Command library](../../libraries/nut.command)
## Roleplay commands

??? realm-shared "<a id=roll></a>roll (maximum)"
    ##### sh_roll {#roll}
    Rolls a random number and broadcasts the result through the roll chat class.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">maximum</span>
    <em><ins>`optional. default`: `100`</ins></em>
     The highest possible roll, capped at 100



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /roll 20

		Chat output: Chestnut has rolled 14.

        ```
    </ul>
??? realm-shared "<a id=fallover></a>fallover (time)"
    ##### sh_fallover {#fallover}
    Ragdolls the caller for a specified duration.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">time</span>
    <em><ins>`optional. default`: `5`</ins></em>
     The ragdoll duration in seconds, clamped between 1 and 60; use a non-positive value for no duration



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /fallover 10

		In-game output: Your character is ragdolled for 10 seconds.

        ```
    </ul>
??? realm-shared "<a id=chargetup></a>chargetup ()"
    ##### sh_chargetup {#chargetup}
    Lets the caller stand up from their ragdoll after its grace period.

    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /chargetup

		Chat output: You are now getting up...
		In-game output: Your ragdoll is removed and you regain control of your character.

        ```
    </ul>
??? realm-shared "<a id=content></a>content ()"
    ##### sh_content {#content}
    Opens the configured NutScript content URL for the caller.

    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /content

		In-game output: The configured content website opens in the Steam overlay or browser.

        ```
    </ul>
## Roleplay act commands

??? realm-shared "<a id=actsit></a>actsit (type)"
    ##### sh_actsit {#actsit}
    Character plays a sitting animation.  This animation loops until interrupted.

	 Valid model types: citizen_male, citizen_female
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">type</span>
    <em><ins>`optional. default`: `1`</ins></em>
     Sequence type. Up to 3



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /actsit

		In-game output: Character sits down.

        ```
    </ul>
??? realm-shared "<a id=actsitwall></a>actsitwall (type)"
    ##### sh_actsitwall {#actsitwall}
    Character plays a sitting animation against a wall.  This animation loops until interrupted. Requires the character to have a wall against their back.

	 Valid model types: citizen_male, citizen_female
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">type</span>
    <em><ins>`optional. default`: `1`</ins></em>
     Sequence type. Up to 3



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /actsitwall

		In-game output: Character sits down against a wall.

        ```
    </ul>
??? realm-shared "<a id=actinjured></a>actinjured (type)"
    ##### sh_actinjured {#actinjured}
    Character plays an injured lying animation.  This animation loops until interrupted.

	 Valid model types: citizen_male, citizen_female
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">type</span>
    <em><ins>`optional. default`: `1`</ins></em>
     Sequence type. Up to 3



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /actinjured

		In-game output: Character lies on the floor injured.

        ```
    </ul>
??? realm-shared "<a id=actarrest></a>actarrest ()"
    ##### sh_actarrest {#actarrest}
    Character plays an arrested animation.  This animation loops until interrupted. Requires the character to face a wall.

	 Valid model types: citizen_male

    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /actarrest

		In-game output: Character faces the wall with hands up.

        ```
    </ul>
??? realm-shared "<a id=actcheer></a>actcheer (type)"
    ##### sh_actcheer {#actcheer}
    Character plays a cheering animation.

	 Valid model types: citizen_male, citizen_female
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">type</span>
    <em><ins>`optional. default`: `1`</ins></em>
     Sequence type. Up to 3



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /actcheer

		In-game output: Character cheers.

        ```
    </ul>
??? realm-shared "<a id=acthere></a>acthere (type)"
    ##### sh_acthere {#acthere}
    Character plays a beconing animation.

	 Valid model types: citizen_male, citizen_female
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">type</span>
    <em><ins>`optional. default`: `1`</ins></em>
     Sequence type. Up to 2



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /acthere

		In-game output: Character waves towards them.

        ```
    </ul>
??? realm-shared "<a id=actstand></a>actstand (type)"
    ##### sh_actstand {#actstand}
    Character plays a sitting animation.  This animation loops until interrupted.

	 Valid model types: citizen_male, citizen_female, metrocop
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">type</span>
    <em><ins>`optional. default`: `1`</ins></em>
     Sequence type. Up to 4



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /actstand

		In-game output: Character stands idly.

        ```
    </ul>
## Character commands

??? realm-shared "<a id=chardesc></a>chardesc (description)"
    ##### sh_chardesc {#chardesc}
    Changes the caller's character description.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">description</span>
    <em><ins>`optional`</ins></em>
     The new character description; omit it to open a description prompt



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /chardesc A tired detective wearing a weathered coat.

		Chat output: You have changed your character's description.

        ```
    </ul>
??? realm-server "<a id=charsetmodel></a>charsetmodel (target, model)"
    ##### sv_charsetmodel {#charsetmodel}
    !!! danger "Admin Only"
        This command is available to admins only!
    Changes the model of a target player's character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character model to change

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">model</span>
     The model path to assign



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charsetmodel Chestnut models/Humans/Group01/Female_01.mdl

		Chat output: Rebel1324 changed Chestnut's model to models/Humans/Group01/Female_01.mdl.
		In-game output: Chestnut's character model updates.

        ```
    </ul>
??? realm-server "<a id=charsetskin></a>charsetskin (target, skin)"
    ##### sv_charsetskin {#charsetskin}
    !!! danger "Admin Only"
        This command is available to admins only!
    Changes the skin of a target player's character model.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character skin is changed

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">skin</span>
     The model skin index to assign



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charsetskin Chestnut 1

		Chat output: Rebel1324 changed Chestnut's skin to 1.
		In-game output: Chestnut's character model skin updates.

        ```
    </ul>
??? realm-server "<a id=charsetbodygroup></a>charsetbodygroup (target, bodygroup, value)"
    ##### sv_charsetbodygroup {#charsetbodygroup}
    !!! danger "Admin Only"
        This command is available to admins only!
    Changes or clears a named bodygroup on a target player's character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose bodygroup is changed

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">bodygroup</span>
     The name of the bodygroup to change

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">value</span>
    <em><ins>`optional`</ins></em>
     The bodygroup value; values below 1 clear the stored value



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charsetbodygroup Chestnut headgear 1

		Chat output: Rebel1324 changed Chestnut's headgear bodygroup to 1.
		In-game output: Chestnut's character model updates.

        ```
    </ul>
??? realm-server "<a id=charsetname></a>charsetname (target, newName)"
    ##### sv_charsetname {#charsetname}
    !!! danger "Admin Only"
        This command is available to admins only!
    Changes a target player's character name.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character name is changed

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">newName</span>
    <em><ins>`optional`</ins></em>
     The new character name; omit it to open a name prompt



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charsetname Chestnut Cheesenut

		Chat output: Rebel1324 changed Chestnut's name to Cheesenut.
		In-game output: Chestnut's displayed character name updates to Cheesenut.

        ```
    </ul>
??? realm-server "<a id=charkick></a>charkick (target)"
    ##### sv_charkick {#charkick}
    !!! danger "Admin Only"
        This command is available to admins only!
    Kicks a target player's currently loaded character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character is kicked



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charkick Chestnut

		Chat output: Rebel1324 kicked char Chestnut.
		In-game output: Chestnut returns to the character-selection screen.

        ```
    </ul>
??? realm-server "<a id=charban></a>charban (target)"
    ##### sv_charban {#charban}
    !!! danger "Admin Only"
        This command is available to admins only!
    Bans a target player's currently loaded character.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character is banned



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charban Chestnut

		Chat output: Rebel1324 banned the character Chestnut.
		In-game output: Chestnut can no longer load the banned character.

        ```
    </ul>
??? realm-server "<a id=charunban></a>charunban (name)"
    ##### sv_charunban {#charunban}
    !!! danger "Admin Only"
        This command is available to admins only!
    Removes a character ban by character name.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     The name or partial name of the character to unban



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charunban Chestnut

		Chat output: Rebel1324 has unbanned the character Chestnut.
		In-game output: Chestnut can load the character again.

        ```
    </ul>
## Character permissions commands

??? realm-server "<a id=flaggive></a>flaggive (target, flags)"
    ##### sv_flaggive {#flaggive}
    !!! danger "Admin Only"
        This command is available to admins only!
    Gives character flags to a target player.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character receives the flags

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">flags</span>
    <em><ins>`optional`</ins></em>
     The flags to give; omit them to open a selection prompt



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /flaggive Chestnut pet

		Chat output: Rebel1324 has given Chestnut pet flags.

        ```
    </ul>
??? realm-server "<a id=flagtake></a>flagtake (target, flags)"
    ##### sv_flagtake {#flagtake}
    !!! danger "Admin Only"
        This command is available to admins only!
    Removes character flags from a target player.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character loses the flags

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">flags</span>
    <em><ins>`optional`</ins></em>
     The flags to remove; omit them to open a selection prompt



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /flagtake Chestnut p

		Chat output: Rebel1324 has taken p flags from Chestnut.

        ```
    </ul>
??? realm-server "<a id=plywhitelist></a>plywhitelist (target, faction)"
    ##### sv_plywhitelist {#plywhitelist}
    !!! danger "Admin Only"
        This command is available to admins only!
    Whitelists a player for a faction.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player to whitelist

    <span class="types"><span class="type">Faction</span></span>
    <span class="parameter">faction</span>
     The faction to whitelist the player for



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /plywhitelist Chestnut Citizen

		Chat output: Rebel1324 has whitelisted Chestnut for the Citizen faction.

        ```
    </ul>
??? realm-server "<a id=plyunwhitelist></a>plyunwhitelist (target, faction)"
    ##### sv_plyunwhitelist {#plyunwhitelist}
    !!! danger "Admin Only"
        This command is available to admins only!
    Removes a player's whitelist for a faction.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player to remove from the faction whitelist

    <span class="types"><span class="type">Faction</span></span>
    <span class="parameter">faction</span>
     The faction to remove



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /plyunwhitelist Chestnut Citizen

		Chat output: Rebel1324 has unwhitelisted Chestnut from the Citizen faction.

        ```
    </ul>
## Faction and class commands

??? realm-server "<a id=plytransfer></a>plytransfer (target, faction)"
    ##### sv_plytransfer {#plytransfer}
    !!! danger "Admin Only"
        This command is available to admins only!
    Transfers a target player's character to another faction.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character is transferred

    <span class="types"><span class="type">Faction</span></span>
    <span class="parameter">faction</span>
     The destination faction



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /plytransfer Chestnut Citizen

		Chat output: Rebel1324 has transfered Chestnut to the Citizen faction.
		In-game output: Chestnut's faction data updates.

        ```
    </ul>
??? realm-server "<a id=charsetfaction></a>charsetfaction (target, faction)"
    ##### sv_charsetfaction {#charsetfaction}
    !!! danger "Admin Only"
        This command is available to admins only!
    Alias of plytransfer that transfers a target character to another faction.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose character is transferred

    <span class="types"><span class="type">Faction</span></span>
    <span class="parameter">faction</span>
     The destination faction



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charsetfaction Chestnut Citizen

		Chat output: Rebel1324 has transfered Chestnut to the Citizen faction.
		In-game output: Chestnut's faction data updates.

        ```
    </ul>
??? realm-shared "<a id=beclass></a>beclass (class)"
    ##### sh_beclass {#beclass}
    Attempts to change the caller's character to a class.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">class</span>
     The class ID, unique ID, or localized name



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /beclass medic

		Chat output: You have become Medic.
		In-game output: Your character class data updates.

        ```
    </ul>
## Inventory commands

??? realm-server "<a id=chargiveitem></a>chargiveitem (target, item, amount)"
    ##### sv_chargiveitem {#chargiveitem}
    !!! danger "Admin Only"
        This command is available to admins only!
    Adds an item to a target player's character inventory.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose inventory receives the item

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">item</span>
     The item unique ID or matching item name

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">amount</span>
    <em><ins>`optional. default`: `1`</ins></em>
     The number of items to add



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /chargiveitem Chestnut water 2

		Chat output: Item successfully created.
		In-game output: Two water items are added to Chestnut's inventory.

        ```
    </ul>
??? realm-server "<a id=clearinv></a>clearinv (target)"
    ##### sv_clearinv {#clearinv}
    !!! danger "Admin Only"
        This command is available to admins only!
    Removes every item from a target player's character inventory.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose inventory is cleared



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /clearinv Chestnut

		Chat output: Chestnut's inventory was reset.
		In-game output: All items are removed from Chestnut's inventory.

        ```
    </ul>
## Economy commands

??? realm-shared "<a id=givemoney></a>givemoney (amount)"
    ##### sh_givemoney {#givemoney}
    Gives money to the player directly in front of the caller.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     The amount of money to give



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /givemoney 50

		Chat output: You gave $50 to Chestnut.
		Chat output: You found $50.
		In-game output: The caller's and target's money balances update.

        ```
    </ul>
??? realm-server "<a id=charsetmoney></a>charsetmoney (target, amount)"
    ##### sv_charsetmoney {#charsetmoney}
    !!! danger "Admin Only"
        This command is available to admins only!
    Sets a target player's character money balance.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player whose money is changed

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     The non-negative money amount to set



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /charsetmoney Chestnut 500

		Chat output: You have set Chestnut's money to $500.
		In-game output: Chestnut's money balance updates.

        ```
    </ul>
??? realm-shared "<a id=dropmoney></a>dropmoney (amount)"
    ##### sh_dropmoney {#dropmoney}
    Drops money from the caller as a physical money entity.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     The amount of money to drop



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /dropmoney 25

		In-game output: A $25 money entity is dropped in front of you.

        ```
    </ul>
## 3D panel commands

??? realm-server "<a id=paneladd></a>paneladd (url, w, h, scale)"
    ##### sv_paneladd {#paneladd}
    !!! danger "Admin Only"
        This command is available to admins only!
    ??? info "Plugin function"
        This is defined and used within the [3DPanel](../../plugins/3DPanel) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Adds a 3D web panel at the position the admin is looking at.
	 The panel faces the surface hit by the admin's eye trace.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">url</span>
     The URL displayed by the panel

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">w</span>
    <em><ins>`optional`</ins></em>
     The panel width

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">h</span>
    <em><ins>`optional`</ins></em>
     The panel height

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">scale</span>
    <em><ins>`optional`</ins></em>
     The panel display scale



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /paneladd https://github.com/NutScript/NutScript-Wiki/blob/main/docs/assets/Nutscript.png 512 256 0.1

		Chat output: You have added a 3D panel.
		In-game output: A 3D web panel displaying the NutScript logo is placed on the surface you are looking at.

        ```
    </ul>
??? realm-server "<a id=panelremove></a>panelremove (radius)"
    ##### sv_panelremove {#panelremove}
    !!! danger "Admin Only"
        This command is available to admins only!
    ??? info "Plugin function"
        This is defined and used within the [3DPanel](../../plugins/3DPanel) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Removes 3D panels near the position the admin is looking at.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">radius</span>
    <em><ins>`optional`</ins></em>
     The radius around the aimed position in which to remove panels



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /panelremove 128

		Chat output: You have removed 1 3D panels.
		In-game output: All 3D panels within 128 units of the aimed position are removed.

        ```
    </ul>
## 3D text commands

??? realm-server "<a id=textadd></a>textadd (text, scale)"
    ##### sv_textadd {#textadd}
    !!! danger "Admin Only"
        This command is available to admins only!
    ??? info "Plugin function"
        This is defined and used within the [3DText](../../plugins/3DText) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Adds 3D text at the surface the admin is looking at.
	 The text faces the surface hit by the admin's eye trace.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     The text to display

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">scale</span>
    <em><ins>`optional`</ins></em>
     The display scale of the text



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /textadd Welcome to City 0.1

		Chat output: You have added a text.
		In-game output: The text "Welcome to City" is placed on the surface you are looking at.

        ```
    </ul>
??? realm-server "<a id=textremove></a>textremove (radius)"
    ##### sv_textremove {#textremove}
    !!! danger "Admin Only"
        This command is available to admins only!
    ??? info "Plugin function"
        This is defined and used within the [3DText](../../plugins/3DText) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Removes 3D text near the surface the admin is looking at.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">radius</span>
    <em><ins>`optional`</ins></em>
     The radius around the aimed position in which to remove text



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /textremove 128

		Chat output: You have removed 1 texts.
		In-game output: All 3D text within 128 units of the aimed position are removed.

        ```
    </ul>
## Map scene commands

??? realm-server "<a id=mapsceneadd></a>mapsceneadd (isPair)"
    ##### sv_mapsceneadd {#mapsceneadd}
    !!! danger "Admin Only"
        This command is available to admins only!
    ??? info "Plugin function"
        This is defined and used within the [MapScene](../../plugins/MapScene) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Adds a static or paired map scene at the admin's current position and viewing angles.
	 Run the command once with `true` to save the first endpoint of a moving paired scene, then run it again to create the scene using the admin's current position and angles as the second endpoint.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">isPair</span>
    <em><ins>`optional`</ins></em>
     Whether to begin a paired moving scene



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /mapsceneadd

		Chat output: You have added a map scene.
		In-game output: A static map scene is added at your current position and viewing direction.

        ```
    </ul>
??? realm-server "<a id=mapsceneremove></a>mapsceneremove (radius)"
    ##### sv_mapsceneremove {#mapsceneremove}
    !!! danger "Admin Only"
        This command is available to admins only!
    ??? info "Plugin function"
        This is defined and used within the [MapScene](../../plugins/MapScene) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Removes map scenes near the admin's current position.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">radius</span>
    <em><ins>`optional. default`: `280`</ins></em>
     The radius around the admin in which to remove map scenes



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /mapsceneremove 500

		Chat output: You have removed 1 map scenes.
		In-game output: Map scenes within 500 units of your current position are removed.

        ```
    </ul>
