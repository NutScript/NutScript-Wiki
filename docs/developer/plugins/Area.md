# Area
Designate areas within a map.
 Players entering an area get a popup with the area name.
## Functions

??? realm-server "<a id=nut.area.getArea></a>nut.area.getArea (areaID)"
    ##### nut.area.getArea {#nut.area.getarea}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    get an area's data with its id
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">areaID</span>
     The area ID of the area


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    area The requested area



??? realm-server "<a id=nut.area.getAllArea></a>nut.area.getAllArea ()"
    ##### nut.area.getAllArea {#nut.area.getallarea}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    get all areas of the current map
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    All current areas of the current map



??? realm-server "<a id=nut.area.addArea></a>nut.area.addArea (name, vector1, vector2, desc)"
    ##### nut.area.addArea {#nut.area.addarea}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    add a new area.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">name</span>
     Name of the area (Will appear in a pop-up upon entering)

    <span class="types"><span class="type">Vector</span></span>
    <span class="parameter">vector1</span>
     First corner of the area.

    <span class="types"><span class="type">Vector</span></span>
    <span class="parameter">vector2</span>
     Opposite corner of the area from Vector1

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">desc</span>
    <em><ins>`optional. default`: `"none"`</ins></em>
     Internal description of the area



??? realm-client "<a id=nut.area.openAreaManager></a>nut.area.openAreaManager ()"
    ##### nut.area.openAreaManager {#nut.area.openareamanager}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Open the area Manager on the client's screen

## [Client](/developer/classes/Client/) methods

??? realm-server "<a id=playerMeta:isInArea></a>playerMeta:isInArea (areaID)"
    ##### playerMeta:isInArea {#playermetaisinarea}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Check if player is in an area.  This is for single check (ex: area items, checking area in commands)
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">areaID</span>
     The ID of the area to test for


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    whether player is in specified area


     <h4>Or</h4>
    <span class="types"><span class="type">false</span></span>




    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    error message



??? realm-server "<a id=playerMeta:getArea></a>playerMeta:getArea ()"
    ##### playerMeta:getArea {#playermetagetarea}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Get the client's current Area.  This is for continous checks (ex: checking gas area whatever.)

## [Plugin Hooks](/developer/hooks/GM/)

??? realm-server "<a id=PLUGIN:saveAreas></a>PLUGIN:saveAreas ()"
    ##### PLUGIN:saveAreas {#pluginsaveareas}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    Save the current area information to disk.

??? realm-server "<a id=PLUGIN:OnPlayerAreaChanged></a>PLUGIN:OnPlayerAreaChanged (client, areaID)"
    ##### PLUGIN:OnPlayerAreaChanged {#pluginonplayerareachanged}
    ??? info "Plugin function"
        This is defined and used within the [Area](../../plugins/Area) plugin. As such, its functionality might differ in different schemas, or be unavailable.
    If area is changed, display the new area's name to the client's screen.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     target client entity

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">areaID</span>
     ID of the new area



