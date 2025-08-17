# Inventory
Base inventory class.
 The inventory object stores items, typically in a grid via the GridInv plugin. Alternatively, a simple inventory, without a grid system, is available with the SimpleInv plugin.
Typically, each Character has their own inventory, however an inventory can also be tied to a world object/prop (such as with the storage plugin), or an item (such as bags).

## Methods
??? realm-client "<a id=Inventory:show></a>Inventory:show (parent)"
    ##### cl_Inventory:show {#inventoryshow}
    Displays the inventory in a UI panel.
	 Delegates to the global `nut.inventory.show` function.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Panel</span></span>
    <span class="parameter">parent</span>
     Optional parent panel to attach the inventory UI to


    <h3>Returns:</h3>
    <span class="types"><span class="type">panel</span></span>
    The created inventory panel



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.inventory#nut.inventory.show">nut.inventory.show</a></li>
    </ul>
??? realm-server "<a id=Inventory:addItem></a>Inventory:addItem (item)"
    ##### sv_Inventory:addItem {#inventoryadditem}
    Given an item type string, creates an instance of that item type
	 and adds it to this inventory.  A promise is returned containing
	 the newly created item after it has been added to the inventory.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item to add


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    The inventory instance



??? realm-server "<a id=Inventory:add></a>Inventory:add (item)"
    ##### sv_Inventory:add {#inventoryadd}
    Sample implementation of Inventory:add - delegates to addItem
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item to add


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    The inventory instance



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/inventory#inventoryadditem">addItem</a></li>
    </ul>
??? realm-server "<a id=Inventory:syncItemAdded></a>Inventory:syncItemAdded (item)"
    ##### sv_Inventory:syncItemAdded {#inventorysyncitemadded}
    Syncs a single added item with clients.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Item</span></span>
    <span class="parameter">item</span>
     The item to sync



??? realm-server "<a id=Inventory:initializeStorage></a>Inventory:initializeStorage (initialData)"
    ##### sv_Inventory:initializeStorage {#inventoryinitializestorage}
    Called to handle the logic for creating the data storage for this inventory.
	 Returns a promise that is resolved after the storing is done.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">initialData</span>
     Table of keys and values to persist


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Promise that resolves to the inventory ID



??? realm-server "<a id=Inventory:restoreFromStorage></a>Inventory:restoreFromStorage (id)"
    ##### sv_Inventory:restoreFromStorage {#inventoryrestorefromstorage}
    Called when some inventory with a certain ID needs to be loaded.
	 If this type is responsible for loading that inventory ID in particular,
	 then a promise that resolves to an inventory should be returned.
	 This allows for custom data storage of inventories.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     The inventory ID to restore



??? realm-server "<a id=Inventory:removeItem></a>Inventory:removeItem (itemID, preserveItem)"
    ##### sv_Inventory:removeItem {#inventoryremoveitem}
    Removes an item corresponding to the given item ID if it is in this
	 inventory.  If the item belongs to this inventory, it is then deleted.
	 A promise is returned which is resolved after removal from this.
	 Deletes the item or clears its association based on `preserveItem`.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">itemID</span>
     The ID of the item to remove

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">preserveItem</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to keep the item in the DB


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolved when removal completes



??? realm-server "<a id=Inventory:setData></a>Inventory:setData (key, value)"
    ##### sv_Inventory:setData {#inventorysetdata}
    Stores arbitrary data that can later be looked up using the given key.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Metadata key

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     Value to store


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    The inventory instance



??? realm-server "<a id=Inventory:canAccess></a>Inventory:canAccess (action, context)"
    ##### sv_Inventory:canAccess {#inventorycanaccess}
    Whether or not a client can interact with this inventory.
	 Iterates through registered access rules.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">action</span>
     The type of access

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">context</span>
     Optional context (e.g. player)


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether access is allowed

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Reason if denied



??? realm-server "<a id=Inventory:addAccessRule></a>Inventory:addAccessRule (rule, priority)"
    ##### sv_Inventory:addAccessRule {#inventoryaddaccessrule}
    Changes the canAccess method to also return the result of the rule
	 where the rule of a function of (inventory, player, action) -> boolean.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">rule</span>
     Access rule function (inventory, action, context)

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">priority</span>
    <em><ins>`optional`</ins></em>
     Insert position


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    The inventory instance



??? realm-server "<a id=Inventory:removeAccessRule></a>Inventory:removeAccessRule (rule)"
    ##### sv_Inventory:removeAccessRule {#inventoryremoveaccessrule}
    Removes the first instance of a specific access rule from the inventory.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">rule</span>
     The rule function to remove


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    The inventory instance



??? realm-server "<a id=Inventory:getRecipients></a>Inventory:getRecipients ()"
    ##### sv_Inventory:getRecipients {#inventorygetrecipients}
    Returns a list of players who can interact with this inventory.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    List of players



??? realm-server "<a id=Inventory:onInstanced></a>Inventory:onInstanced ()"
    ##### sv_Inventory:onInstanced {#inventoryoninstanced}
    Called after this inventory has first been created and loaded.

??? realm-server "<a id=Inventory:onLoaded></a>Inventory:onLoaded ()"
    ##### sv_Inventory:onLoaded {#inventoryonloaded}
    Called after this inventory has first been loaded, not including right
	 after it has been created.

??? realm-server "<a id=Inventory:loadItems></a>Inventory:loadItems ()"
    ##### sv_Inventory:loadItems {#inventoryloaditems}
    Loads the items contained in this inventory.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Mapping of item IDs to item objects



??? realm-server "<a id=Inventory:onItemsLoaded></a>Inventory:onItemsLoaded (items)"
    ##### sv_Inventory:onItemsLoaded {#inventoryonitemsloaded}
    Called after items have been loaded into the inventory.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">items</span>
     The loaded items



??? realm-server "<a id=Inventory:instance></a>Inventory:instance (initialData)"
    ##### sv_Inventory:instance {#inventoryinstance}
    Creates an inventory instance via the global inventory system.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">initialData</span>
     Table of initialization parameters


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/inventory#">inventory</a></span>
    The new inventory instance



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.inventory#nut.inventory.instance">nut.inventory.instance</a></li>
    </ul>
??? realm-server "<a id=Inventory:syncData></a>Inventory:syncData (key, recipients)"
    ##### sv_Inventory:syncData {#inventorysyncdata}
    Sends a key-value pair to all clients who can access this inventory.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The key to replicate

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">recipients</span>
    <em><ins>`optional`</ins></em>
     Override recipients



??? realm-server "<a id=Inventory:sync></a>Inventory:sync (recipients)"
    ##### sv_Inventory:sync {#inventorysync}
    Sends the full inventory and all contained items information to clients.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">recipients</span>
    <em><ins>`optional`</ins></em>
     Override recipients



??? realm-server "<a id=Inventory:delete></a>Inventory:delete ()"
    ##### sv_Inventory:delete {#inventorydelete}
    Deletes the inventory using the global deletion handler.

    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.inventory#nut.inventory.deletebyid">nut.inventory.deleteByID</a></li>
    </ul>
??? realm-server "<a id=Inventory:destroy></a>Inventory:destroy ()"
    ##### sv_Inventory:destroy {#inventorydestroy}
    Destroys all items and removes the inventory instance.

??? realm-shared "<a id=Inventory:getData></a>Inventory:getData (key, default)"
    ##### sh_Inventory:getData {#inventorygetdata}
    Returns the value of the stored key if it exists, the default otherwise.
	 If no default is given, then nil is returned.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">key</span>
     The key to look up data  with

    <span class="types">vararg</span>
    <span class="parameter">default</span>
    <em><ins>`optional. default`: `nil`</ins></em>
     The value that should be returned if no such data was found. By default this is nil


    <h3>Returns:</h3>
    A value corresponding to the key



??? realm-shared "<a id=Inventory:extend></a>Inventory:extend (className)"
    ##### sh_Inventory:extend {#inventoryextend}
    Creates an inventory object whose base class is the callee.
	 Use this to create subclasses of a specific inventory type.
	 A starting point is to extend the nut.Inventory class.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">className</span>
     the className of the base class to extend



??? realm-shared "<a id=Inventory:configure></a>Inventory:configure (config)"
    ##### sh_Inventory:configure {#inventoryconfigure}
    Called when the inventory can first be configured.
	 You can call edit the inventory configuration in here.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">config</span>
     A reference to the inventory configuration table



??? realm-shared "<a id=Inventory:addDataProxy></a>Inventory:addDataProxy (key, onChange)"
    ##### sh_Inventory:addDataProxy {#inventoryadddataproxy}
    Adds a callback function for data changes whose key matches the given one.
	 This allows you to add additional behavior when data is changed. Note that
	 this only runs if the default behavior for Inventory:onDataChanged has
	 not been modified.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     A string containing the data key that needs to be changed for the callback to run

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onChange</span>
     A function with oldValue and newValue as parameters that is called when the data is changed



??? realm-shared "<a id=Inventory:register></a>Inventory:register (typeID)"
    ##### sh_Inventory:register {#inventoryregister}
    Sets the type ID for this inventory class and registers it as a valid type.
	 This basically sets up configurations for this inventory and registers
	 the type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">typeID</span>
     A string containing a key to later access the type



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.inventory#nut.inventory.newtype">nut.inventory.newType</a></li>
    </ul>
??? realm-shared "<a id=Inventory:new></a>Inventory:new ()"
    ##### sh_Inventory:new {#inventorynew}
    Creates an instance of this inventory type.
    <h3>Returns:</h3>
    An inventory instance



    <h3>See also:</h3>
    <ul>
        <li><a href="../../libraries/nut.inventory#nut.inventory.new">nut.inventory.new</a></li>
    </ul>
??? realm-shared "<a id=Inventory:getType></a>Inventory:getType ()"
    ##### sh_Inventory:getType {#inventorygettype}
    Returns the inventory type of this inventory.
    <h3>Returns:</h3>
    An inventory object



??? realm-shared "<a id=Inventory:onDataChanged></a>Inventory:onDataChanged (key, oldValue, newValue)"
    ##### sh_Inventory:onDataChanged {#inventoryondatachanged}
    Called when a data value has been changed for this inventory.
	 You can use this to add different behaviors for certain keys changing.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">key</span>
     The key whose value was changed

    <span class="types">vararg</span>
    <span class="parameter">oldValue</span>
     The previous value corresponding to the key

    <span class="types">vararg</span>
    <span class="parameter">newValue</span>
     The value the key is being set to



??? realm-shared "<a id=Inventory:getItems></a>Inventory:getItems ()"
    ##### sh_Inventory:getItems {#inventorygetitems}
    Returns a list of all the items in this inventory
    <h3>Returns:</h3>
    A table containing items



??? realm-shared "<a id=Inventory:getItemsOfType></a>Inventory:getItemsOfType (itemType)"
    ##### sh_Inventory:getItemsOfType {#inventorygetitemsoftype}
    Returns a list of items in this inventory with matching item type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     A string containing the desired type of item


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    A table containing items whose type matches



??? realm-shared "<a id=Inventory:getFirstItemOfType></a>Inventory:getFirstItemOfType (itemType)"
    ##### sh_Inventory:getFirstItemOfType {#inventorygetfirstitemoftype}
    Returns an item in this inventory of a specific type, or nil if not found.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     A string containing the desired type of item


    <h3>Returns:</h3>
    An item instance if one was found, nil otherwise.



??? realm-shared "<a id=Inventory:hasItem></a>Inventory:hasItem (itemType)"
    ##### sh_Inventory:hasItem {#inventoryhasitem}
    Returns whether or not this inventory contains at least one item of the given type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     The desired type of item


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if there is such an item, false otherwise



??? realm-shared "<a id=Inventory:getItemCount></a>Inventory:getItemCount (itemType)"
    ##### sh_Inventory:getItemCount {#inventorygetitemcount}
    Returns the amount of items of a given type are in the inventory.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     The desired type of item


    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    the number of relevant items in the inventory



??? realm-shared "<a id=Inventory:getID></a>Inventory:getID ()"
    ##### sh_Inventory:getID {#inventorygetid}
    Returns the inventory's ID.
    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Inventory ID



## Metamethods
??? realm-shared "<a id=Inventory:__tostring></a>Inventory:__tostring ()"
    ##### sh_Inventory:__tostring {#inventory__tostring}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    A string representation of this inventory.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    A string containing a nice representation of this inventory



??? realm-shared "<a id=Inventory:__eq></a>Inventory:__eq (other)"
    ##### sh_Inventory:__eq {#inventory__eq}
    Check whether the inventory is the same as another
    <h3>Parameters:</h3>
    <span class="types"><span class="type">inv</span></span>
    <span class="parameter">other</span>
     The other inventory


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if equal, otherwise False



