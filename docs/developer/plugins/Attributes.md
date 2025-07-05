# Attributes
Attributes that define various RPG stats of a character.
 Attributes allow characters to be more defined within an RPG context.
## Functions
??? realm-shared "<a id=nut.attribs.loadFromDir></a>nut.attribs.loadFromDir (directory)"
    ##### nut.attribs.loadFromDir {#nut.attribs.loadfromdir}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Load attribute files from a directory.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Path of the directory containing attribute files



??? realm-shared "<a id=nut.attribs.setup></a>nut.attribs.setup (client)"
    ##### nut.attribs.setup {#nut.attribs.setup}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Run onSetup functions of each relevant attribute on a client.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Target player entity



## [Character methods](/developer/classes/Character/)

??? realm-server "<a id=charMeta:updateAttrib></a>charMeta:updateAttrib (key, value)"
    ##### charMeta:updateAttrib {#charmetaupdateattrib}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    adds a value to a character's attribute.  The new value cannot exceed the attributes maxValue or the maxAttribs config
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     the id of attribute

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">value</span>
     the value to be added



??? realm-server "<a id=charMeta:setAttrib></a>charMeta:setAttrib (key, value)"
    ##### charMeta:setAttrib {#charmetasetattrib}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    sets  a character's attribute value.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     the id of attribute

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">value</span>
     the value to be added



??? realm-server "<a id=charMeta:addBoost></a>charMeta:addBoost (boostID, attribID, boostAmount)"
    ##### charMeta:addBoost {#charmetaaddboost}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    adds a boost to a character's attribute.  The boost acts as a (semi-)temporary change to the attribute value without changing the base value.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">boostID</span>
     ID of the boost. Used to easily edit/remove the boost later

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">attribID</span>
     the id of attribute

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">boostAmount</span>
     the value to be added



??? realm-server "<a id=charMeta:removeBoost></a>charMeta:removeBoost (boostID, attribID)"
    ##### charMeta:removeBoost {#charmetaremoveboost}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    removes a boost from a character's attribute.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">boostID</span>
     ID of the boost

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">attribID</span>
     the id of attribute



??? realm-shared "<a id=charMeta:getBoost></a>charMeta:getBoost (attribID)"
    ##### charMeta:getBoost {#charmetagetboost}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Get all applied boosts to a character's attribute.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">attribID</span>
     ID of the attribute


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    A list of boosts applied to the character's attribute



??? realm-shared "<a id=charMeta:getBoosts></a>charMeta:getBoosts ()"
    ##### charMeta:getBoosts {#charmetagetboosts}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Get all boosts applied to a character, across all attributes.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    A list of all boosts applied to a character



??? realm-shared "<a id=charMeta:getAttrib></a>charMeta:getAttrib (key, default)"
    ##### charMeta:getAttrib {#charmetagetattrib}
    ??? info "Plugin function"
        This is defined and used within the [Attributes](../../plugins/Attributes) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Get a character's current attribute value.  Includes applied boosts.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     the ID of the attribute

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">default</span>
     the default value if the character does not have an attribute value



