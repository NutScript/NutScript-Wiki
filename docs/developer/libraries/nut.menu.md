# nut.menu
Library functions for nut.menu.


nut.menu is the interaction menu that appears when interacting with NS entities and characters.
## Functions
???+ realm-client "<a id=nut.menu.add></a>nut.menu.add (options, position, onRemove)"
    ##### cl_nut.menu.add {#nut.menu.add}
    Adds a new menu to the list of drawn menus.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">options</span>
     Table of button text as keys and their callbacks as values

    <span class="types">vararg</span>
    <span class="parameter">position</span>
     If Vector: Menu position, otherwise if Entiy: entity to position menu on

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">onRemove</span>
    <em><ins>`optional`</ins></em>
     Function to call after menu fades out


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Index of the menu in the list



???+ realm-client "<a id=nut.menu.drawAll></a>nut.menu.drawAll ()"
    ##### cl_nut.menu.drawAll {#nut.menu.drawall}
    Draws all active menus or hides them when needed.

???+ realm-client "<a id=nut.menu.getActiveMenu></a>nut.menu.getActiveMenu ()"
    ##### cl_nut.menu.getActiveMenu {#nut.menu.getactivemenu}
    Determines which menu is being looked at.
    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Index of the active menu

    <span class="types"><span class="type">function</span></span>
    Callback of the currently hovered option



???+ realm-client "<a id=nut.menu.onButtonPressed></a>nut.menu.onButtonPressed (menu, callback)"
    ##### cl_nut.menu.onButtonPressed {#nut.menu.onbuttonpressed}
    Handles button press events for menus.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">number</span></span>
    <span class="parameter">menu</span>
     The menu index

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
     Function to execute when pressed


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    Whether the button was successfully pressed



