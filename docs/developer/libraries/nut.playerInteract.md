# nut.playerInteract
Base library for the player interaction menu library.


Hehehahahoo.
## Functions
???+ realm-client "<a id=nut.playerInteract.addFunc></a>nut.playerInteract.addFunc (name, data)"
    ##### cl_nut.playerInteract.addFunc {#nut.playerinteract.addfunc}
    Adds a new player interaction button to the interaction system.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     Unique identifier for the interaction

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Configuration table for the interaction



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.playerInteract.addFunc("recognize", {
		    nameLocalized = "recognize",
		    callback = function(target)
		        netstream.Start("rgnDirect", target)
		    end,
		    canSee = function(target)
		        return true
		    end
		})

        ```
    </ul>
???+ realm-client "<a id=nut.playerInteract.interact></a>nut.playerInteract.interact (entity, time)"
    ##### cl_nut.playerInteract.interact {#nut.playerinteract.interact}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Initiates interaction with a player entity.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
     The player entity to interact with

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">time</span>
     Duration of the interaction animation



???+ realm-client "<a id=nut.playerInteract.clear></a>nut.playerInteract.clear ()"
    ##### cl_nut.playerInteract.clear {#nut.playerinteract.clear}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Clears the current player interaction.

