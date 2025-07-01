# nut.item
Item Module.

Core system for managing in-game items, their definitions, and instances.
## Functions
???+ realm-server "<a id=nut.item.instance></a>nut.item.instance (index, uniqueID, itemData, x, y, callback)"
    ##### sv_nut.item.instance {#nut.item.instance}
    Creates a new item instance in the database.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">index</span>
    <em><ins>`optional. default`: `nil`</ins></em>
     Inventory ID (nil for none)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     The item's unique identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">itemData</span>
    <em><ins>`optional. default`: `{}`</ins></em>
     Additional item data

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">x</span>
    <em><ins>`optional`</ins></em>
     X position in inventory

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">y</span>
    <em><ins>`optional`</ins></em>
     Y position in inventory

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Function to call when item is created


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Returns a promise that resolves with the item instance



???+ realm-server "<a id=nut.item.deleteByID></a>nut.item.deleteByID (id)"
    ##### sv_nut.item.deleteByID {#nut.item.deletebyid}
    Deletes an item from the database by its ID.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">id</span>
     The item ID to delete



???+ realm-server "<a id=nut.item.loadItemByID></a>nut.item.loadItemByID (itemIndex, recipientFilter)"
    ##### sv_nut.item.loadItemByID {#nut.item.loaditembyid}
    Loads an item from the database by its ID.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">itemIndex</span>
     If number, single item ID. Otherwise if table, a table of IDs to load

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">recipientFilter</span>
    <em><ins>`optional`</ins></em>
     Player filter for network messages



???+ realm-server "<a id=nut.item.spawn></a>nut.item.spawn (uniqueID, position, callback, angles, data)"
    ##### sv_nut.item.spawn {#nut.item.spawn}
    Instances and spawns a given item type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     The item's unique identifier

    <span class="types"><span class="type">Vector</span></span>
    <span class="parameter">position</span>
     Where to spawn the item

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Function to call when spawned (receives item, entity)

    <span class="types"><span class="type">Angle</span></span>
    <span class="parameter">angles</span>
    <em><ins>`optional`</ins></em>
     Spawn angles

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
    <em><ins>`optional. default`: `{}`</ins></em>
     Additional item data


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    A promise when no callback is provided



???+ realm-shared "<a id=nut.item.get></a>nut.item.get (identifier)"
    ##### sh_nut.item.get {#nut.item.get}
    Retrieves an item definition table
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">identifier</span>
     Unique ID of the item


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Item definition table



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        local itemDef = nut.item.get("medkit")

        ```
    </ul>
???+ realm-shared "<a id=nut.item.load></a>nut.item.load (path, baseID, isBaseItem)"
    ##### sh_nut.item.load {#nut.item.load}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Loads an item definition from file
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">path</span>
     Path to the item file

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">baseID</span>
     Base item ID to inherit from

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">isBaseItem</span>
     Whether this is a base item definition



???+ realm-shared "<a id=nut.item.isItem></a>nut.item.isItem (object)"
    ##### sh_nut.item.isItem {#nut.item.isitem}
    Checks if an object is a valid item instance
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">object</span>
     Object to check


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether object is an item



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        if nut.item.isItem(entity) then print("Is item") end

        ```
    </ul>
???+ realm-shared "<a id=nut.item.register></a>nut.item.register (uniqueID, baseID, isBaseItem, path, luaGenerated)"
    ##### sh_nut.item.register {#nut.item.register}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Registers a new item definition
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Unique ID for the item

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">baseID</span>
     Base item ID to inherit from

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">isBaseItem</span>
     Whether this is a base item

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">path</span>
     Path to the item definition file

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">luaGenerated</span>
     Whether item is generated dynamically


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Registered item definition



???+ realm-shared "<a id=nut.item.loadFromDir></a>nut.item.loadFromDir (directory)"
    ##### sh_nut.item.loadFromDir {#nut.item.loadfromdir}
    Loads all items from a directory
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Directory to scan for item files



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.item.loadFromDir("nutscript/items")

        ```
    </ul>
???+ realm-shared "<a id=nut.item.new></a>nut.item.new (uniqueID, id)"
    ##### sh_nut.item.new {#nut.item.new}
    Creates a new item instance
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Item definition ID

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">id</span>
     Unique instance ID


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    New item instance



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        local medkit = nut.item.new("medkit", 123)

        ```
    </ul>
## Tables
???+ realm-shared "<a id=ItemDef></a>ItemDef"
    ##### sh_ItemDef {#itemdef}
    Item Definition Structure
    <h3>Fields:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">uniqueID</span>
     Unique identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     Display name

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">desc</span>
     Description text

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">model</span>
     World model path

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">width</span>
     Inventory width

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">height</span>
     Inventory height

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">category</span>
     Organizational category

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">hooks</span>
     Table of event hooks

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">functions</span>
     Table of interaction functions



???+ realm-shared "<a id=ItemInstance></a>ItemInstance"
    ##### sh_ItemInstance {#iteminstance}
    Item Instance Structure
    <h3>Fields:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     Unique instance ID

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
     Custom data storage

    <span class="types"><span class="type">Inventory</span></span>
    <span class="parameter">inventory</span>
     Current inventory reference



