# nut.lang
Language Module.

Handles multilingual text storage, retrieval, and formatting.

## Functions
??? realm-shared "<a id=nut.lang.loadFromDir></a>nut.lang.loadFromDir (directory)"
    ##### nut.lang.loadFromDir {#nut.lang.loadfromdir}
    Loads language files from a directory
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Path containing language files (sh_*.lua)



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.lang.loadFromDir("nutscript/language")

        ```
    </ul>
