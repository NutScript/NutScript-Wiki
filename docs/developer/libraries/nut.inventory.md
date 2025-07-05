# nut.inventory
Inventory System.

Base framework for creating and managing different inventory implementations.
## Functions
??? realm-shared "<a id=nut.inventory.newType></a>nut.inventory.newType (typeID, invTypeStruct)"
    ##### nut.inventory.newType {#nut.inventory.newtype}
    Performs type checking for new inventory types then stores them into nut.inventory.types if there are no errors.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">typeID</span>
     Unique identifier for the inventory type

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">invTypeStruct</span>
     Inventory type definition table



    <h3>Raises:</h3>
    Error if type validation fails or typeID exists
    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.inventory.newType("storage", {
		    __index = table,
		    add = function(self, item) ... end,
		    remove = function(self, item) ... end,
		    sync = function(self, client) ... end,
		    typeID = "storage",
		    className = "StorageInventory",
		    config = {size = 10}
		})

        ```
    </ul>
??? realm-shared "<a id=nut.inventory.new></a>nut.inventory.new (typeID)"
    ##### nut.inventory.new {#nut.inventory.new}
    Creates an instance of an inventory class whose type is the given type ID.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">typeID</span>
     Type identifier to instantiate


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    New inventory instance



    <h3>Raises:</h3>
    Error if typeID doesn't exist
    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        local inventory = nut.inventory.new("storage")

        ```
    </ul>
??? realm-client "<a id=nut.inventory.show></a>nut.inventory.show (inventory, parent)"
    ##### nut.inventory.show {#nut.inventory.show}
    Displays an inventory UI panel (client-only)
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">inventory</span>
     Inventory to display

    <span class="types"><span class="type">Panel</span></span>
    <span class="parameter">parent</span>
    <em><ins>`optional`</ins></em>
     Parent panel for the UI


    <h3>Returns:</h3>
    <span class="types"><span class="type">panel</span></span>
    Created inventory panel



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/inventory#inventoryshow">inventory:show</a></li>
    </ul>
??? realm-shared "<a id=nut.inventory.loadByID></a>nut.inventory.loadByID (id, noCache)"
    ##### nut.inventory.loadByID {#nut.inventory.loadbyid}
    Loads an inventory by its ID
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">id</span>
     Inventory ID to load

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noCache</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to bypass cache


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to inventory instance



??? realm-shared "<a id=nut.inventory.loadFromDefaultStorage></a>nut.inventory.loadFromDefaultStorage (id, noCache)"
    ##### nut.inventory.loadFromDefaultStorage {#nut.inventory.loadfromdefaultstorage}
    Loads inventory from default storage
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">id</span>
     Inventory ID to load

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noCache</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to bypass cache


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to inventory instance



??? realm-shared "<a id=nut.inventory.instance></a>nut.inventory.instance (typeID, initialData)"
    ##### nut.inventory.instance {#nut.inventory.instance}
    Creates a new inventory instance
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">typeID</span>
     Inventory type identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">initialData</span>
    <em><ins>`optional`</ins></em>
     Initial inventory data


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to new inventory instance



??? realm-shared "<a id=nut.inventory.loadAllFromCharID></a>nut.inventory.loadAllFromCharID (charID)"
    ##### nut.inventory.loadAllFromCharID {#nut.inventory.loadallfromcharid}
    Loads all inventories for a character
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">charID</span>
     Character ID to load for


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to table of inventories



??? realm-shared "<a id=nut.inventory.deleteByID></a>nut.inventory.deleteByID (id)"
    ##### nut.inventory.deleteByID {#nut.inventory.deletebyid}
    Deletes an inventory by ID
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     Inventory ID to delete



??? realm-shared "<a id=nut.inventory.cleanUpForCharacter></a>nut.inventory.cleanUpForCharacter (character)"
    ##### nut.inventory.cleanUpForCharacter {#nut.inventory.cleanupforcharacter}
    Cleans up inventories for a character
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">character</span>
     Character to clean up for



## Tables
??? realm-shared "<a id=InventoryTypeDef></a>InventoryTypeDef"
    ##### InventoryTypeDef {#inventorytypedef}
    Inventory Type Definition Structure
    <h3>Fields:</h3>
    <span class="types">vararg</span>
    <span class="parameter">__index</span>
     Metatable reference (must be "table")

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">add</span>
     Function to add items (server-only, required)

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">remove</span>
     Function to remove items (server-only, required)

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">sync</span>
     Function to sync inventory (server-only, required)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">typeID</span>
     Unique string identifier (required)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">className</span>
     Class name for metatable (required)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">config</span>
     Configuration table (optional)



??? realm-shared "<a id=InventoryInstance></a>InventoryInstance"
    ##### InventoryInstance {#inventoryinstance}
    Inventory Instance Structure
    <h3>Fields:</h3>
    <span class="types">vararg</span>
    <span class="parameter">config</span>
     Type-specific configuration

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     Unique numeric identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">items</span>
     Table containing inventory items



