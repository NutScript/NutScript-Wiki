Library for creating and setting config options within the framework.


Configs allow various framework settings and variables to be editted live within the game, without the need to update server files and cause an update/restart.
## Functions
???+ realm-shared "<a id=nut.config.add></a>nut.config.add (key, value, desc, callback, data, noNetworking)"
    ##### sh_nut.config.add {#nut.config.add}
    Add a new config.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Unique ID of the config

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     default value of the config

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">desc</span>
     Description of the config

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Function to call when the config changes

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Additional settings for the config

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noNetworking</span>
     Whether changes to the config should be networked to clients



    <h3>Usage:</h3>
    <ul>
        ```lua
         nut.config.add("oocDelay", 10, "The delay before a player can use OOC chat again in seconds.", nil, {
			data = {min = 0, max = 10000},
			category = "chat"
		})

        ```
    </ul>
