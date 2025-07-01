# Item
Item Class.

Represents an instance of an item in NutScript, including persistence, networking, inventory management, and interaction logic.
## Methods
???+ realm-server "<a id=Item:removeFromInventory></a>Item:removeFromInventory (preserveItem)"
    ##### sv_Item:removeFromInventory {#itemremovefrominventory}
    Removes the item from the inventory it is in and then itself
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">preserveItem</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to keep the item in memory/database


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise that resolves when the item is removed



???+ realm-server "<a id=Item:delete></a>Item:delete ()"
    ##### sv_Item:delete {#itemdelete}
    Deletes the item from memory and database.
    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Resolves when the item is deleted



???+ realm-server "<a id=Item:remove></a>Item:remove ()"
    ##### sv_Item:remove {#itemremove}
    Permanently deletes this item instance and from the inventory it is in.
    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Resolves when the item is fully removed



???+ realm-server "<a id=Item:destroy></a>Item:destroy ()"
    ##### sv_Item:destroy {#itemdestroy}
    Deletes the in-memory data for this item

???+ realm-server "<a id=Item:onDisposed></a>Item:onDisposed ()"
    ##### sv_Item:onDisposed {#itemondisposed}
    Called when the item data has been cleaned up from memory.

???+ realm-server "<a id=Item:getEntity></a>Item:getEntity ()"
    ##### sv_Item:getEntity {#itemgetentity}
    Returns the entity representing this item, if one exists.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a> or <span class="type">nil</span></span>
    The entity representing the item



???+ realm-server "<a id=Item:spawn></a>Item:spawn (position, angles)"
    ##### sv_Item:spawn {#itemspawn}
    Spawn an item entity based off the item table.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">position</span>
     A Vector position or a player to derive drop position from

    <span class="types"><span class="type">Angle</span></span>
    <span class="parameter">angles</span>
    <em><ins>`optional`</ins></em>
     Orientation of the item


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a></span>
    The spawned entity



???+ realm-server "<a id=Item:transfer></a>Item:transfer (newInventory, bBypass)"
    ##### sv_Item:transfer {#itemtransfer}
    Transfers the item to a different inventory.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Inventory</span></span>
    <span class="parameter">newInventory</span>
     The target inventory

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">bBypass</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to bypass access rules


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if transfer succeeded or was queued



???+ realm-server "<a id=Item:onInstanced></a>Item:onInstanced (id)"
    ##### sv_Item:onInstanced {#itemoninstanced}
    Called when an instance of this item has been created.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">id</span>
     The item ID



???+ realm-server "<a id=Item:onSync></a>Item:onSync (recipient)"
    ##### sv_Item:onSync {#itemonsync}
    Called when data for this item should be replicated to the recipient.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">recipient</span>
     The player to sync to



???+ realm-server "<a id=Item:onRemoved></a>Item:onRemoved ()"
    ##### sv_Item:onRemoved {#itemonremoved}
    Called when this item has been deleted permanently.

???+ realm-server "<a id=Item:onRestored></a>Item:onRestored (inventory)"
    ##### sv_Item:onRestored {#itemonrestored}
    Called when this item has been loaded from the database.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Inventory</span></span>
    <span class="parameter">inventory</span>
    <em><ins>`optional`</ins></em>
     The inventory the item belongs to



???+ realm-server "<a id=Item:sync></a>Item:sync (recipient)"
    ##### sv_Item:sync {#itemsync}
    Syncs this item’s data to a recipient.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">recipient</span>
    <em><ins>`optional`</ins></em>
     The recipient to send data to (nil = broadcast to all clients)



???+ realm-server "<a id=Item:setData></a>Item:setData (key, value, receivers, noSave, noCheckEntity)"
    ##### sv_Item:setData {#itemsetdata}
    Sets data on this item and optionally syncs it.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The data key

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     The data value

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receivers</span>
    <em><ins>`optional`</ins></em>
     Receiver(s) to send update to

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noSave</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to skip saving to database

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noCheckEntity</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to skip syncing with entity



???+ realm-server "<a id=Item:addQuantity></a>Item:addQuantity (quantity, receivers, noCheckEntity)"
    ##### sv_Item:addQuantity {#itemaddquantity}
    Adds quantity to the item.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">quantity</span>
     The amount to add

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receivers</span>
    <em><ins>`optional`</ins></em>
     Receiver(s) to notify

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noCheckEntity</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to skip syncing with entity



???+ realm-server "<a id=Item:setQuantity></a>Item:setQuantity (quantity, receivers, noCheckEntity)"
    ##### sv_Item:setQuantity {#itemsetquantity}
    Sets the quantity of the item.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">quantity</span>
     The new quantity value

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receivers</span>
    <em><ins>`optional`</ins></em>
     Receiver(s) to notify

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noCheckEntity</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to skip syncing with entity



???+ realm-server "<a id=Item:interact></a>Item:interact (action, client, entity, data)"
    ##### sv_Item:interact {#iteminteract}
    Performs an interaction on the item (e.g., use, drop).
	 Handles all logic and hooks associated with the action.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">action</span>
     The action name

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     The player performing the action

    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
    <em><ins>`optional`</ins></em>
     The associated entity if any

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">data</span>
    <em><ins>`optional`</ins></em>
     Optional data/context


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether the interaction succeeded



???+ realm-shared "<a id=Item:getQuantity></a>Item:getQuantity ()"
    ##### sh_Item:getQuantity {#itemgetquantity}
    Gets the quantity of the item.
	 If item ID is 0, returns `maxQuantity` instead.
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    The quantity



???+ realm-shared "<a id=Item:getID></a>Item:getID ()"
    ##### sh_Item:getID {#itemgetid}
    Gets the unique item ID.
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    Item ID



???+ realm-shared "<a id=Item:getName></a>Item:getName ()"
    ##### sh_Item:getName {#itemgetname}
    Gets the item's display name.
	 Localized on client.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Name of the item



???+ realm-shared "<a id=Item:getDesc></a>Item:getDesc ()"
    ##### sh_Item:getDesc {#itemgetdesc}
    Gets the item's description.
	 Localized on client.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Description of the item



???+ realm-shared "<a id=Item:getModel></a>Item:getModel ()"
    ##### sh_Item:getModel {#itemgetmodel}
    Gets the item's model path.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Model path



???+ realm-shared "<a id=Item:getSkin></a>Item:getSkin ()"
    ##### sh_Item:getSkin {#itemgetskin}
    Gets the item's skin index.
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    Skin index



???+ realm-shared "<a id=Item:getPrice></a>Item:getPrice ()"
    ##### sh_Item:getPrice {#itemgetprice}
    Gets the item's price.  Used in, for example, vendors.
	 May be calculated dynamically using `calcPrice`.
    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Price value



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/item#itemcalcprice">calcPrice</a></li>
    </ul>
???+ realm-shared "<a id=Item:calcPrice></a>Item:calcPrice (price)"
    ##### sh_Item:calcPrice {#itemcalcprice}
    Dynamically calculate the price of the item.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">price</span>
     The Item's default price


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Calculated price



    <h3>See also:</h3>
    <ul>
        <li><a href="../../classes/item#itemgetprice">getPrice</a></li>
    </ul>
???+ realm-shared "<a id=Item:call></a>Item:call (method, client, entity, ...)"
    ##### sh_Item:call {#itemcall}
    Calls a method on the item with client/entity context.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">method</span>
     Name of the method to call

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
    <em><ins>`optional`</ins></em>
     The client context

    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
    <em><ins>`optional`</ins></em>
     The entity context

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Arguments to pass to the method



???+ realm-shared "<a id=Item:getOwner></a>Item:getOwner ()"
    ##### sh_Item:getOwner {#itemgetowner}
    Gets the player who owns this item.
	 Scans known inventories and recipients.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/client#">client</a></span>
    The owner


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If item has no owner



???+ realm-shared "<a id=Item:getData></a>Item:getData (key, default)"
    ##### sh_Item:getData {#itemgetdata}
    Gets stored data from the item.
	 If key is `true`, returns the entire data table.
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">key</span>
     Data key (string) or true to return all

    <span class="types">vararg</span>
    <span class="parameter">default</span>
    <em><ins>`optional`</ins></em>
     Default value if key not found


    <h3>Returns:</h3>
    any Stored value or default



???+ realm-shared "<a id=Item:hook></a>Item:hook (name, func)"
    ##### sh_Item:hook {#itemhook}
    Attaches a hook function to this item.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     Hook name

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">func</span>
     Hook function



???+ realm-shared "<a id=Item:postHook></a>Item:postHook (name, func)"
    ##### sh_Item:postHook {#itemposthook}
    Attaches a post-execution hook to this item.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     Hook name

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">func</span>
     Hook function



???+ realm-shared "<a id=Item:onRegistered></a>Item:onRegistered ()"
    ##### sh_Item:onRegistered {#itemonregistered}
    Called after NutScript has stored this item into the list of valid items.

## Metamethods
???+ realm-shared "<a id=Item:__eq></a>Item:__eq (other)"
    ##### sh_Item:__eq {#item__eq}
    Checks if this item is equal to another item.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="../../classes/item#">item</a></span>
    <span class="parameter">other</span>
     The other item


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether the two items have the same ID



???+ realm-shared "<a id=Item:__tostring></a>Item:__tostring ()"
    ##### sh_Item:__tostring {#item__tostring}
    Converts the item to a string representation.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The item as string identifier



