# Entity
Base class for entities.

Entities are all interactible objects on the server. [Learn more here](https://wiki.facepunch.com/gmod/ENTITY)
## Networking Methods

??? realm-server "<a id=Entity:sendNetVar></a>Entity:sendNetVar (key, receiver)"
    ##### Entity:sendNetVar {#entitysendnetvar}
    Sends a network variable from an entity to a specific receiver.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Name of the variable

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receiver</span>
     Client or list of clients to receive the data



??? realm-server "<a id=Entity:clearNetVars></a>Entity:clearNetVars (receiver)"
    ##### Entity:clearNetVars {#entityclearnetvars}
    Clears all network variables associated with this entity.  Notifies the client(s) to remove them.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receiver</span>
     Client or list of clients to receive deletion info



??? realm-server "<a id=Entity:setNetVar></a>Entity:setNetVar (key, value, receiver)"
    ##### Entity:setNetVar {#entitysetnetvar}
    Sets a network variable on the entity and notifies the receiver.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Variable name

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     Variable value

    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">receiver</span>
    <em><ins>`optional`</ins></em>
     Client or list of clients to receive update



??? realm-shared "<a id=Entity:getNetVar></a>Entity:getNetVar (key, default)"
    ##### Entity:getNetVar {#entitygetnetvar}
    Retrieves a networked variable from the entity.
	 The clientside version of the function can only return data that was previously networked to the client.
	 Returns a default value if the variable is not set.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The variable name

    <span class="types">vararg</span>
    <span class="parameter">default</span>
    <em><ins>`optional`</ins></em>
     A fallback value to return if the key is not present


    <h3>Returns:</h3>
    <span class="types"><span class="type">vararg</span></span>
    The stored value or the default



## Entity Door Utilities

Provides utility methods for door detection and logic.
??? realm-shared "<a id=Entity:isDoor></a>Entity:isDoor ()"
    ##### Entity:isDoor {#entityisdoor}
    Checks if an entity is a door by comparing its class.
    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if the entity is a door



??? realm-shared "<a id=Entity:getDoorPartner></a>Entity:getDoorPartner ()"
    ##### Entity:getDoorPartner {#entitygetdoorpartner}
    Returns the door's partner entity (slave or parent).
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a></span>
    The partner door entity if found


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If the door has no partner



??? realm-shared "<a id=Entity:isLocked></a>Entity:isLocked ()"
    ##### Entity:isLocked {#entityislocked}
    Checks if the door or vehicle is locked.
	 Reads from the entity's internal save table.
    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    <code>True</code> if the entity is locked, <code>false</code> otherwise


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no lock data is available



??? realm-shared "<a id=Entity:getBlocker></a>Entity:getBlocker ()"
    ##### Entity:getBlocker {#entitygetblocker}
    Returns the entity that is blocking the door's sequence.
	 Typically another entity preventing the door from moving.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a></span>
    Blocker entity if present


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no blocker is present



??? realm-server "<a id=Entity:blastDoor></a>Entity:blastDoor (velocity, lifeTime, ignorePartner)"
    ##### Entity:blastDoor {#entityblastdoor}
    Simulates the door being blasted open by replacing it with a physics dummy.
	 The original door is hidden and later restored. Optionally applies to a partner door.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Vector</span></span>
    <span class="parameter">velocity</span>
    <em><ins>`optional`</ins></em>
     Velocity applied to the dummy object

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">lifeTime</span>
    <em><ins>`optional. default`: `120`</ins></em>
     Duration in seconds before restoring the door

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">ignorePartner</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, skips blasting the partner door


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/entity#">entity</a></span>
    The created dummy physics entity replacing the door



## Entity Chair Utilities

Provides helper functions to determine whether an entity is considered a chair.
??? realm-shared "<a id=Entity:isChair></a>Entity:isChair ()"
    ##### Entity:isChair {#entityischair}
    Whether or not a vehicle is a chair by checking its model with the chair list.
    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if the entity is a chair



