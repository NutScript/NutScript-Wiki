# nut.chat
Extended Chatbox Module.


The NutScript chatbox is a custom implementation, rather than using the default GMOD chatbox. This allows the chatbox to contain additional features, such as multiple different chat types and categories.
## Functions
???+ realm-shared "<a id=nut.chat.timestamp></a>nut.chat.timestamp (ooc)"
    ##### sh_nut.chat.timestamp {#nut.chat.timestamp}
    Returns a formatted timestamp for chat messages.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">ooc</span>
     Whether timestamp is for OOC chat


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The formatted timestamp



???+ realm-shared "<a id=nut.chat.register></a>nut.chat.register (chatType, data)"
    ##### sh_nut.chat.register {#nut.chat.register}
    Registers a new chat type with the information provided.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">chatType</span>
     Unique identifier for the chat type

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Configuration table for the chat type



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.chat#chattype">ChatType</a></li>
    </ul>
    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.chat.register("ic", {
		    format = "%s says \"%s\"",
		    radius = function() return 280 end,
		    color = Color(255, 255, 255)
		})

        ```
    </ul>
???+ realm-shared "<a id=nut.chat.parse></a>nut.chat.parse (client, message, noSend)"
    ##### sh_nut.chat.parse {#nut.chat.parse}
    Parses a chat message to determine its type and processes it.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player sending the message

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The chat message content

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noSend</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to skip sending the message


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The chat type used

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The processed message

    <span class="types"><span class="type">bool</span></span>
    Whether the sender is anonymous



???+ realm-server "<a id=nut.chat.send></a>nut.chat.send (speaker, chatType, text, anonymous, receivers)"
    ##### sv_nut.chat.send {#nut.chat.send}
    Send a chat message using the specified chat type.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">speaker</span>
     The player sending the message

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">chatType</span>
     The type of chat message

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     The message content

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">anonymous</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether sender should be anonymous

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">receivers</span>
    <em><ins>`optional`</ins></em>
     Optional list of specific receivers



## Tables
???+ realm-shared "<a id=ChatType></a>ChatType"
    ##### sh_ChatType {#chattype}
    Configuration table for registering a new chat type
    <h3>Fields:</h3>
    <span class="types">vararg</span>
    <span class="parameter">radius</span>
     Maximum hearing distance. If number, fixed distance from speaker in HU. Otherwise Function()

    <span class="types">vararg</span>
    <span class="parameter">prefix</span>
     Command prefix(es) (string or table of strings)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">format</span>
     The message format string (uses %s for name/text)

    <span class="types"><span class="type">Color</span></span>
    <span class="parameter">color</span>
     Default color for this chat type

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">font</span>
     Custom font to use

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">filter</span>
     The chat filter category ("ic", "ooc", etc.)

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">deadCanChat</span>
     Whether dead players can use this chat

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noSpaceAfter</span>
     If true, no space required after prefix (For instance with // "ooc", //text would be valid without the need to separate // from the message with a space)

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onCanSay</span>
     Function(speaker, text) - checks if player can speak

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onCanHear</span>
     Function(speaker, listener) - checks if listener can hear

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onChatAdd</span>
     Function(speaker, text, anonymous) - custom display handler

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onGetColor</span>
     Function(speaker, text) - dynamic color handler



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.chat#nut.chat.register">nut.chat.register</a></li>
    </ul>
    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        {
		    format = "%s says \"%s\"",
		    color = Color(255,255,255),
		    radius = 280,
		    prefix = "/me",
		    font = "nutChatFontItalics",
		    filter = "actions",
		    deadCanChat = true,
		    onCanSay = function(speaker, text)
		        return speaker:Alive()
		    end,
		    onGetColor = function(speaker)
		        return team.GetColor(speaker:Team())
		    end
		}

        ```
    </ul>
