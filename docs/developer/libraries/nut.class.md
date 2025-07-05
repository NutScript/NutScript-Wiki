# nut.class
Class System module.

Manages character classes with faction restrictions, limits, and join conditions. Think of classes like classes in TF2. You have 2 "factions", RED and BLU, and within each class
are 9 classes. All are within the same team/faction, yet have special features unique to the class.
## Functions
??? realm-shared "<a id=nut.class.loadFromDir></a>nut.class.loadFromDir (directory)"
    ##### nut.class.loadFromDir {#nut.class.loadfromdir}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Register classes from a directory.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Path to scan for class files



??? realm-shared "<a id=nut.class.canBe></a>nut.class.canBe (client, class)"
    ##### nut.class.canBe {#nut.class.canbe}
    Determines if a player is allowed to join a specific class.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Player attempting to join

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">class</span>
     Class index to check


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether allowed to join

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Reason if not allowed



??? realm-shared "<a id=nut.class.get></a>nut.class.get (identifier)"
    ##### nut.class.get {#nut.class.get}
    Gets a class definition by index or ID
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">identifier</span>
     Class index


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Class definition table



??? realm-shared "<a id=nut.class.getPlayers></a>nut.class.getPlayers (class)"
    ##### nut.class.getPlayers {#nut.class.getplayers}
    Gets all players in a specific class
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">class</span>
     Class index to check


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    List of player entities



