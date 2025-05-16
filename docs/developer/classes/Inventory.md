Base inventory class.
 The inventory object stores items, typically in a grid via the GridInv plugin. Alternatively, a simple inventory, without a grid system, is available with the SimpleInv plugin.
Typically, each Character has their own inventory, however an inventory can also be tied to a world object/prop (such as with the storage plugin), or an item (such as bags).

## Functions
???+ realm-shared "<a id=inv:dummy3></a>inv:dummy3 ()"
    ##### sh_inv:dummy3 {#invdummy3}
    dummy func3

## Methods
???+ realm-shared "<a id=inventory:getData></a>inventory:getData (key, default)"
    ##### sh_inventory:getData {#inventorygetdata}
    Returns the value of the stored key if it exists, the default otherwise.
	 If no default is given, then nil is returned.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">key</span>
     The key to look up data  with

    <span class="types">vararg</span>
    <span class="parameter">default</span>
    <em><ins>optional. default: nil</ins></em>
     The value that should be returned if no such data was found. By default this is nil


    <h3>Returns:</h3>
    A value corresponding to the key


???+ realm-shared "<a id=inventory:extend></a>inventory:extend (className)"
    ##### sh_inventory:extend {#inventoryextend}
    Creates an inventory object whose base class is the callee.
	 Use this to create subclasses of a specific inventory type.
	 A starting point is to extend the nut.Inventory class.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">className</span>
     the className of the base class to extend



???+ realm-shared "<a id=inventory:configure></a>inventory:configure (config)"
    ##### sh_inventory:configure {#inventoryconfigure}
    Called when the inventory can first be configured.
	 You can call edit the inventory configuration in here.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">config</span>
     A reference to the inventory configuration table



???+ realm-shared "<a id=inventory:addDataProxy></a>inventory:addDataProxy (key, onChange)"
    ##### sh_inventory:addDataProxy {#inventoryadddataproxy}
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



???+ realm-shared "<a id=inventory:register></a>inventory:register (typeID)"
    ##### sh_inventory:register {#inventoryregister}
    Sets the type ID for this inventory class and registers it as a valid type.
	 This basically sets up configurations for this inventory and registers
	 the type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">typeID</span>
     A string containing a key to later access the type



    <h3>See also:</h3>
    <ul>
    </ul>
???+ realm-shared "<a id=inventory:new></a>inventory:new ()"
    ##### sh_inventory:new {#inventorynew}
    Creates an instance of this inventory type.
    <h3>Returns:</h3>
    An inventory instance


    <h3>See also:</h3>
    <ul>
    </ul>
???+ realm-shared "<a id=inventory:getType></a>inventory:getType ()"
    ##### sh_inventory:getType {#inventorygettype}
    Returns the inventory type of this inventory.
    <h3>Returns:</h3>
    An inventory object


???+ realm-shared "<a id=inventory:onDataChanged></a>inventory:onDataChanged (key, oldValue, newValue)"
    ##### sh_inventory:onDataChanged {#inventoryondatachanged}
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



???+ realm-shared "<a id=inventory:getItems></a>inventory:getItems ()"
    ##### sh_inventory:getItems {#inventorygetitems}
    Returns a list of all the items in this inventory
    <h3>Returns:</h3>
    A table containing items


???+ realm-shared "<a id=inventory:getItemsOfType></a>inventory:getItemsOfType (itemType)"
    ##### sh_inventory:getItemsOfType {#inventorygetitemsoftype}
    Returns a list of items in this inventory with matching item type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     A string containing the desired type of item


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    A table containing items whose type matches


???+ realm-shared "<a id=inventory:getFirstItemOfType></a>inventory:getFirstItemOfType (itemType)"
    ##### sh_inventory:getFirstItemOfType {#inventorygetfirstitemoftype}
    Returns an item in this inventory of a specific type, or nil if not found.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     A string containing the desired type of item


    <h3>Returns:</h3>
    An item instance if one was found, nil otherwise.


???+ realm-shared "<a id=inventory:hasItem></a>inventory:hasItem (itemType)"
    ##### sh_inventory:hasItem {#inventoryhasitem}
    Returns whether or not this inventory contains at least one item of the given type.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     The desired type of item


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if there is such an item, false otherwise


???+ realm-shared "<a id=inventory:getItemCount></a>inventory:getItemCount (itemType)"
    ##### sh_inventory:getItemCount {#inventorygetitemcount}
    Returns the amount of items of a given type are in the inventory.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">itemType</span>
     The desired type of item


    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    the number of relevant items in the inventory


???+ realm-shared "<a id=inventory:getID></a>inventory:getID ()"
    ##### sh_inventory:getID {#inventorygetid}
    Returns the inventory's ID.
    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Inventory ID


## Metamethods
???+ realm-shared "<a id=inventory:__tostring></a>inventory:__tostring ()"
    ##### sh_inventory:__tostring {#inventory__tostring}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    A string representation of this inventory.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    A string containing a nice representation of this inventory


???+ realm-shared "<a id=inventory:__eq></a>inventory:__eq (other)"
    ##### sh_inventory:__eq {#inventory__eq}
    Check whether the inventory is the same as another
    <h3>Parameters:</h3>
    <span class="types"><span class="type">inv</span></span>
    <span class="parameter">other</span>
     The other inventory


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if equal, otherwise False


