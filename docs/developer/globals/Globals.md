# Globals
Global functions defined in NutScript.

Some functions exist in the global realm ([_G](https://www.lua.org/pil/14.html)) instead of being part of a class or module.
## Networking global functions

???+ realm-server "<a id=setNetVar></a>setNetVar (key, value, receiver)"
    ##### sv_setNetVar {#setnetvar}
    Sets a global network variable.
	 Broadcasts the variable to specified receivers.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Name of the variable

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     Value to assign

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receiver</span>
    <em><ins>`optional`</ins></em>
     Client or list of clients to receive the update



???+ realm-shared "<a id=getNetVar></a>getNetVar (key, default)"
    ##### sh_getNetVar {#getnetvar}
    Gets a global network variable.  Returns default value if key does not exist.
	 The clientside version of the function can only return data that was previously networked to the client.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Variable name

    <span class="types">vararg</span>
    <span class="parameter">default</span>
    <em><ins>`optional`</ins></em>
     Default fallback value


    <h3>Returns:</h3>
    The global value or the default



## Language functions

???+ realm-server "<a id=L></a>L (key, client, ...)"
    ##### sv_L {#l}
    Gets localized string with formatting (server version)
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Language string key

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Target player for language preference

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Format arguments


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted localized string


     <h4>Or</h4>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Original key if translation missing



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        L("welcomeMessage", player, player:Name())

        ```
    </ul>
???+ realm-server "<a id=L2></a>L2 (key, client, ...)"
    ##### sv_L2 {#l2}
    Gets localized string only if exists (server version)
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Language string key

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Target player for language preference

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Format arguments


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted string if translation exists


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no translation found



???+ realm-server "<a id=L3></a>L3 (key, langKey, ...)"
    ##### sv_L3 {#l3}
    Gets localized string with explicit language (server version)
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Language string key

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">langKey</span>
     Specific language to use

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Format arguments


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted localized string


     <h4>Or</h4>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Original key if translation missing



???+ realm-client "<a id=L></a>L (key, ...)"
    ##### cl_L {#l}
    Gets localized string with formatting (client version)
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Language string key

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Format arguments


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted localized string


     <h4>Or</h4>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Original key if translation missing



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        L("welcomeMessage", LocalPlayer():Name())

        ```
    </ul>
???+ realm-client "<a id=L2></a>L2 (key, ...)"
    ##### cl_L2 {#l2}
    Gets localized string only if exists (client version)
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Language string key

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Format arguments


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted string if translation exists


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no translation found



???+ realm-shared "<a id=LangFileStruct></a>LangFileStruct"
    ##### sh_LangFileStruct {#langfilestruct}
    Language File Structure:
	 Each language file should return:
    <h3>Fields:</h3>
    <span class="types">vararg</span>
    <span class="parameter">NAME</span>
     Display name of the language

    <span class="types">vararg</span>
    <span class="parameter">LANGUAGE</span>
     Table of key-value string pairs



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        LANGUAGE = {
		    welcome = "Welcome, %s!",
		    goodbye = "Goodbye!"
		}
		NAME = "English"

        ```
    </ul>
