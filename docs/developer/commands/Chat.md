# Chat
NutScript Chat Command Documentation.



Built-in and bundled-plugin chat commands registered through `nut.chat.register`.
Commands are executed server-side by a player and receive the issuing player plus parsed command arguments.
## Talking chat commands

??? realm-shared "<a id=ic></a>ic (message)"
    ##### sh_ic {#ic}
    In-character chat, as if your character says something out loud.  Triggers by default when no command is present. Text said by characters being looked at will be coloured green.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        What are you waiting for, get NutScript today!

		Chat output: Chestnut says "What are you waiting for, get NutScript today!"

        ```
    </ul>
??? realm-shared "<a id=me></a>me (message)"
    ##### sh_me {#me}
    Message that represents an action, as if the character is performing.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to simulate an action



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /me laughs at the funny reference.

		Chat output: **Chestnut laughs at the funny reference.

        ```
    </ul>
??? realm-shared "<a id=it></a>it (message)"
    ##### sh_it {#it}
    Message that represents an action disconnected from the character.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to simulate an action



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /it A skeleton runs past.

		Chat output: **A skeleton runs past.

        ```
    </ul>
??? realm-shared "<a id=w></a>w (message)"
    ##### sh_w {#w}
    In-character chat, as if your character whispers something.  Hearing radius is reduced.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /w What was that?

		Chat output: Chestnut whispers "What was that?"

        ```
    </ul>
??? realm-shared "<a id=w></a>w (message)"
    ##### sh_w {#w}
    In-character chat, as if your character yells something.  Hearing radius is increased.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /w WOAH DID ANYONE JUST SEE THAT?

		Chat output: Chestnut yells "WOAH DID ANYONE JUST SEE THAT?"

        ```
    </ul>
## Private messaging commands

??? realm-shared "<a id=Commands:pm></a>Commands:pm (target, message)"
    ##### sh_Commands:pm {#commandspm}
    Sends a private message to another player.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">target</span>
     The player receiving the private message

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /pm Rebel1324 Meet me outside the apartment.

		Chat output (Sender): [PM] Chestnut: Meet me outside the apartment.
		Chat output (Receiver): [PM] Chestnut: Meet me outside the apartment.

        ```
    </ul>
??? realm-shared "<a id=Commands:reply></a>Commands:reply (message)"
    ##### sh_Commands:reply {#commandsreply}
    Sends a private message to the most recent player who messaged the caller.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /reply I will be there shortly.

		Chat output (Sender): [PM] Rebel1324: I will be there shortly.
		Chat output (Receiver): [PM] Rebel1324: I will be there shortly.

        ```
    </ul>
??? realm-shared "<a id=Commands:setvoicemail></a>Commands:setvoicemail (message)"
    ##### sh_Commands:setvoicemail {#commandssetvoicemail}
    Sets or clears the caller's voicemail message.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
    <em><ins>`optional`</ins></em>
     The voicemail message to save; omit it to clear the current message



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /setvoicemail Leave a message after the tone.

		Chat output: You have set your voicemail.
		/setvoicemail

		Chat output: You have removed your voicemail..

        ```
    </ul>
## Out of Character chat

??? realm-shared "<a id=ooc></a>ooc (message)"
    ##### sh_ooc {#ooc}
    Out-of-character global message.  The message is perceived as non-rp meta chat.
	 Alternatively '//' also works
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        // Is there a skeleton prank happening?

		Chat output: [OOC] Chestnut: Is there a skeleton prank happening?

        ```
    </ul>
??? realm-shared "<a id=looc></a>looc (message)"
    ##### sh_looc {#looc}
    Out-of-character local message.  The message is perceived as non-rp meta chat. This will only be heard in the character's viscinity.
	 Alternatively './/' and '[[' also works
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        .// Dude don't ruin the prank to other players.

		Chat output: [LOOC] Rebel1324: Dude don't ruin the prank to other players.

        ```
    </ul>
## Event chat

??? realm-server "<a id=event></a>event (message)"
    ##### sv_event {#event}
    !!! danger "Admin Only"
        This command is available to admins only!
    Event chat.  Used by admins to make global server announcements.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to send



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        /event The skeleton ran away, nobody saw that.

		Chat output: The skeleton ran away, nobody saw that.

        ```
    </ul>
