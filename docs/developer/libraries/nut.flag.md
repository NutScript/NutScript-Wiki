# nut.flag
Flag System.

Manages character permissions and abilities through single-character flags. Flags must be single characters, though they are case-sensitive, meaning 'T' and 't' are separate flags.
## Functions
??? realm-shared "<a id=nut.flag.add></a>nut.flag.add (flag, desc, callback)"
    ##### sh_nut.flag.add {#nut.flag.add}
    Adds a flag that does something when set.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">flag</span>
     Single-character flag identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">desc</span>
     Description of the flag's purpose

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Function(client, isGiven) called when flag is granted/revoked



