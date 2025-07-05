# nut.command
Chat Command module.

Handles registration, parsing, and execution of chat and console commands.
## Functions
??? realm-shared "<a id=nut.command.add></a>nut.command.add (command, data)"
    ##### nut.command.add {#nut.command.add}
    Adds a new command to the list of commands.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">command</span>
     Command name

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Command definition table



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.command#commanddef">CommandDef</a></li>
    </ul>
??? realm-shared "<a id=nut.command.extractArgs></a>nut.command.extractArgs (text)"
    ##### nut.command.extractArgs {#nut.command.extractargs}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Gets a table of arguments from a string.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     Input text to parse


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Extracted arguments



??? realm-server "<a id=nut.command.findFaction></a>nut.command.findFaction (client, name)"
    ##### nut.command.findFaction {#nut.command.findfaction}
    Finds a faction based on the uniqueID, and then the name if no such uniqueID exists.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Command source

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     Faction name or ID


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Faction data or nil



??? realm-server "<a id=nut.command.run></a>nut.command.run (client, command, arguments)"
    ##### nut.command.run {#nut.command.run}
    Forces a player to run a command.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Player running command

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">command</span>
     Command name

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">arguments</span>
     Command arguments



??? realm-server "<a id=nut.command.parse></a>nut.command.parse (client, text, realCommand, arguments)"
    ##### nut.command.parse {#nut.command.parse}
    Add a function to parse a regular chat string.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Player running command

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     Full command text

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">realCommand</span>
    <em><ins>`optional`</ins></em>
     Pre-extracted command name

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">arguments</span>
    <em><ins>`optional`</ins></em>
     Pre-extracted arguments


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether a command was executed



??? realm-client "<a id=nut.command.send></a>nut.command.send (command, ...)"
    ##### nut.command.send {#nut.command.send}
    Sends a command from client to server
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">command</span>
     Command name

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Command arguments



## Tables
??? realm-shared "<a id=CommandDef></a>CommandDef"
    ##### CommandDef {#commanddef}
    Configuration table for command definitions
    <h3>Fields:</h3>
    <span class="types">vararg</span>
    <span class="parameter">group</span>
     String/table of allowed usergroups

    <span class="types">vararg</span>
    <span class="parameter">alias</span>
     String/table of command aliases

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">syntax</span>
     Command usage syntax (e.g. "<name> [amount]")

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onRun</span>
     Function(client, args) - Command execution callback

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onCheckAccess</span>
     Function(client) - Permission check

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">adminOnly</span>
     Boolean shortcut for admin-only commands

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">superAdminOnly</span>
     Boolean shortcut for superadmin-only commands

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">realCommand</span>
     Original command name if different from registered name



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.command#nut.command.add">nut.command.add</a></li>
    </ul>
    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.command.add("givecash", {
		    syntax = "<name> <amount>",
		    adminOnly = true,
		    onRun = function(client, args)
		        local target = nut.command.findPlayer(client, args[1])
		        local amount = tonumber(args[2])
		        -- Command logic here
		    end
		})

        ```
    </ul>
