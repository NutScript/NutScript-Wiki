# nut.currency
Currency System.

Handles money/currency functionality including display formatting, spawning, and character transactions.
## Functions
??? realm-shared "<a id=nut.currency.set></a>nut.currency.set (symbol, singular, plural)"
    ##### sh_nut.currency.set {#nut.currency.set}
    Sets the currency display properties
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">symbol</span>
     Currency symbol (e.g. "$")

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">singular</span>
     Singular name (e.g. "dollar")

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">plural</span>
     Plural name (e.g. "dollars")



??? realm-shared "<a id=nut.currency.get></a>nut.currency.get (amount)"
    ##### sh_nut.currency.get {#nut.currency.get}
    Formats an amount into a display string
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     Amount to format


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted currency string



??? realm-shared "<a id=nut.currency.spawn></a>nut.currency.spawn (pos, amount, angle)"
    ##### sh_nut.currency.spawn {#nut.currency.spawn}
    Spawns a physical money entity in the world
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Vector</span></span>
    <span class="parameter">pos</span>
     Position to spawn

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
     Money value

    <span class="types"><span class="type">Angle</span></span>
    <span class="parameter">angle</span>
    <em><ins>`optional`</ins></em>
     Spawn angle


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a></span>
    The created money entity



