# nut.util
Utility module.

This module contains numerous useful utility functions used within other modules and classes.
## General Utility Functions

Provides various helpers for file inclusion, server data handling, player properties, and math-based utilities.
??? realm-shared "<a id=nut.util.include></a>nut.util.include (fileName, state)"
    ##### sh_nut.util.include {#nut.util.include}
    Includes a Lua file depending on filename prefix or forced state.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">fileName</span>
     The file name to include

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">state</span>
    <em><ins>`optional`</ins></em>
     One of 'server', 'shared', or 'client'



??? realm-shared "<a id=nut.util.includeDir></a>nut.util.includeDir (directory, fromLua, recursive)"
    ##### sh_nut.util.includeDir {#nut.util.includedir}
    Includes all Lua files in a directory with optional recursion.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">directory</span>
     Directory to search for files

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">fromLua</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to include relative from /lua

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">recursive</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to include subdirectories



??? realm-server "<a id=nut.util.getAddress></a>nut.util.getAddress ()"
    ##### sv_nut.util.getAddress {#nut.util.getaddress}
    Deprecated.  Returns the server's IP address.
	 Use [`game.GetIPAddress()`](https://wiki.facepunch.com/gmod/game.GetIPAddress) instead.
    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    IP address and port



??? realm-server "<a id=nut.util.getAdmins></a>nut.util.getAdmins (isSuper)"
    ##### sv_nut.util.getAdmins {#nut.util.getadmins}
    Returns a table of admin or superadmin players.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">isSuper</span>
    <em><ins>`optional. default`: `false`</ins></em>
     True to return only superadmins


    <h3>Returns:</h3>
    <span class="types"><span class="type">tab</span></span>
    Table of Player objects



??? realm-shared "<a id=nut.util.isSteamID></a>nut.util.isSteamID (value)"
    ##### sh_nut.util.isSteamID {#nut.util.issteamid}
    Returns true if a string is a 32-bit SteamID.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">value</span>
     The string to test


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if valid SteamID



??? realm-server "<a id=nut.util.findPlayer></a>nut.util.findPlayer (identifier, allowPatterns)"
    ##### sv_nut.util.findPlayer {#nut.util.findplayer}
    Finds a player by name or SteamID.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">identifier</span>
     Player name or SteamID

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">allowPatterns</span>
    <em><ins>`optional. default`: `false`</ins></em>
     Whether to allow pattern search


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="../../classes/client#">client</a></span>
    Matching player


     <h4>Or</h4>
    <span class="types"><span class="type">nil</span></span>
    If no match found



??? realm-shared "<a id=nut.util.gridVector></a>nut.util.gridVector (vec, gridSize)"
    ##### sh_nut.util.gridVector {#nut.util.gridvector}
    Snaps a vector to the nearest point on a grid.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Vector</span></span>
    <span class="parameter">vec</span>
     The vector to round

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">gridSize</span>
     Grid spacing


    <h3>Returns:</h3>
    <span class="types"><span class="type">vector</span></span>
    Snapped vector



??? realm-server "<a id=nut.util.getAllChar></a>nut.util.getAllChar ()"
    ##### sv_nut.util.getAllChar {#nut.util.getallchar}
    Gets all active character IDs from connected players.
    <h3>Returns:</h3>
    <span class="types"><span class="type">tab</span></span>
    Table of character IDs



??? realm-shared "<a id=nut.util.getMaterial></a>nut.util.getMaterial (materialPath)"
    ##### sh_nut.util.getMaterial {#nut.util.getmaterial}
    Returns a single cached copy of a material or creates it if it doesn't exist.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">materialPath</span>
     Path to the material


    <h3>Returns:</h3>
    <span class="types"><span class="type">Material</span></span>
    The loaded or cached material



## Blur Drawing Utilities

Provides functions to draw blurred backgrounds behind panels or at specific coordinates, with support for performance-friendly fallback.
??? realm-client "<a id=nut.util.drawBlur></a>nut.util.drawBlur (panel, amount, passes)"
    ##### cl_nut.util.drawBlur {#nut.util.drawblur}
    Draws a blurred material over the screen, to blur things.
	 Automatically uses a cheaper fallback if the `nut_cheapblur` convar is enabled.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Panel</span></span>
    <span class="parameter">panel</span>
     The panel to apply blur behind

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
    <em><ins>`optional. default`: `5`</ins></em>
     The intensity of the blur

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">passes</span>
    <em><ins>`optional. default`: `0.2`</ins></em>
     How many blur layers to draw



??? realm-client "<a id=nut.util.drawBlurAt></a>nut.util.drawBlurAt (x, y, w, h, amount, passes)"
    ##### cl_nut.util.drawBlurAt {#nut.util.drawblurat}
    Draws a blurred background at a given screen rectangle.
	 Automatically uses a cheaper fallback if the `nut_cheapblur` convar is enabled.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">x</span>
     X-coordinate

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">y</span>
     Y-coordinate

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">w</span>
     Width of the blur region

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">h</span>
     Height of the blur region

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">amount</span>
    <em><ins>`optional. default`: `5`</ins></em>
     The intensity of the blur

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">passes</span>
    <em><ins>`optional. default`: `0.2`</ins></em>
     How many blur layers to draw



## Drawing Utilities

Provides helper functions for text rendering and resolution tracking in NutScript.
??? realm-client "<a id=nut.util.drawText></a>nut.util.drawText (text, x, y, color, alignX, alignY, font, alpha)"
    ##### cl_nut.util.drawText {#nut.util.drawtext}
    Draw a text with a shadow.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     The string to draw

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">x</span>
     X-position

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">y</span>
     Y-position

    <span class="types"><span class="type">Color</span></span>
    <span class="parameter">color</span>
     Text color (defaults to white)

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">alignX</span>
    <em><ins>`optional. default`: `0`</ins></em>
     Horizontal alignment (0 = left, 1 = center, 2 = right)

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">alignY</span>
    <em><ins>`optional. default`: `0`</ins></em>
     Vertical alignment (0 = top, 1 = center, 2 = bottom)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">font</span>
    <em><ins>`optional. default`: `"nutGenericFont"`</ins></em>
     Font to use

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">alpha</span>
    <em><ins>`optional`</ins></em>
     Override alpha value


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Width of the drawn text



??? realm-client "<a id=nut.util.wrapText></a>nut.util.wrapText (text, width, font)"
    ##### cl_nut.util.wrapText {#nut.util.wraptext}
    Wraps text so it does not pass a certain width.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     The string to wrap

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">width</span>
     Maximum line width in pixels

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">font</span>
    <em><ins>`optional. default`: `"nutChatFont"`</ins></em>
     Font used to measure width


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Array of wrapped lines

    <span class="types"><span class="type">number</span></span>
    Maximum line width



## Notification Utilities

Handles localized and plain chat notifications sent from the server or generated locally.
??? realm-client "<a id=nut.util.notify></a>nut.util.notify (message)"
    ##### cl_nut.util.notify {#nut.util.notify}
    Displays a plain chat message.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to display



??? realm-client "<a id=nut.util.notifyLocalized></a>nut.util.notifyLocalized (message, ...)"
    ##### cl_nut.util.notifyLocalized {#nut.util.notifylocalized}
    Creates a translated notification.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The localization key

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Optional arguments to insert into the message



??? realm-server "<a id=nut.util.notify></a>nut.util.notify (message, recipient)"
    ##### sv_nut.util.notify {#nut.util.notify}
    Sends a plain text notification to a player or broadcasts it.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The message to display

    <span class="types">vararg</span>
    <span class="parameter">recipient</span>
    <em><ins>`optional`</ins></em>
     A single player, <a href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a> of players, or <code>nil</code> to broadcast



??? realm-server "<a id=nut.util.notifyLocalized></a>nut.util.notifyLocalized (message, recipient, ...)"
    ##### sv_nut.util.notifyLocalized {#nut.util.notifylocalized}
    Sends a localized message to a player or broadcasts it.
	 Accepts optional arguments for translation.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">message</span>
     The localization key

    <span class="types">vararg</span>
    <span class="parameter">recipient</span>
    <em><ins>`optional`</ins></em>
     A single player, <a href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a> of players, or <code>nil</code> to broadcast

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Optional translation arguments



## Queued Sound Utility

Plays a sequence of sounds from an entity with optional delay and timing control.
??? realm-server "<a id=nut.util.emitQueuedSounds></a>nut.util.emitQueuedSounds (entity, sounds, delay, spacing, volume, pitch)"
    ##### sv_nut.util.emitQueuedSounds {#nut.util.emitqueuedsounds}
    Plays a sequence of sounds from an entity with optional spacing, volume, and pitch.
	 Accepts tables of sounds with optional time offsets.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
     The entity emitting the sounds

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">sounds</span>
     Array of sounds or sound tables {soundPath, postDelay, preDelay}

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">delay</span>
    <em><ins>`optional. default`: `0`</ins></em>
     Initial delay before the first sound

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">spacing</span>
    <em><ins>`optional. default`: `0.1`</ins></em>
     Spacing between sounds

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">volume</span>
    <em><ins>`optional`</ins></em>
     Sound volume

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">pitch</span>
    <em><ins>`optional`</ins></em>
     Sound pitch


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Total time taken to emit all sounds



## String Comparison Utility

Provides a helper to check for strict or loose matching between two strings.
??? realm-shared "<a id=nut.util.stringMatches></a>nut.util.stringMatches (a, b)"
    ##### sh_nut.util.stringMatches {#nut.util.stringmatches}
    Returns whether two strings match strictly or loosely.
	 Performs case-insensitive comparison and substring searching.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">a</span>
     The first string

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">b</span>
     The second string


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if the strings match



## Time Utilities

Provides utilities for parsing, formatting, and comparing time values.
??? realm-shared "<a id=nut.util.getUTCTime></a>nut.util.getUTCTime ()"
    ##### sh_nut.util.getUTCTime {#nut.util.getutctime}
    Gets the current time in the UTC time-zone.
    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    UTC time offset in seconds



??? realm-shared "<a id=nut.util.getStringTime></a>nut.util.getStringTime (text)"
    ##### sh_nut.util.getStringTime {#nut.util.getstringtime}
    Gets the amount of seconds from a given formatted string.
	 Example: 5y2d7w = 5 years, 2 days, and 7 weeks.
	 If just given a minute, it is assumed minutes.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">text</span>
     The time string to parse


    <h3>Returns:</h3>
    <span class="types"><span class="type">int</span></span>
    The number of seconds represented



??? realm-shared "<a id=nut.util.dateToNumber></a>nut.util.dateToNumber (str)"
    ##### sh_nut.util.dateToNumber {#nut.util.datetonumber}
    Parses a timestamp string into a date table.
	 Uses the current timestamp if none is provided.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">str</span>
    <em><ins>`optional`</ins></em>
     Timestamp in format "%Y-%m-%d %H:%M:%S"


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Table with year, month, day, hour, min, sec keys



## Ragdoll utilities

Provides a function to locate an empty viable space around an entity.
Used, for instance, when a player ragdoll is removed and the player entity's position must be appropriately placed.
??? realm-server "<a id=nut.util.findEmptySpace></a>nut.util.findEmptySpace (entity, filter, spacing, size, height, tolerance)"
    ##### sv_nut.util.findEmptySpace {#nut.util.findemptyspace}
    Attempts to find empty positions around an entity.
	 Checks a grid and returns sorted viable positions.
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Entity</span></span>
    <span class="parameter">entity</span>
     The entity to start from

    <span class="types">vararg</span>
    <span class="parameter">filter</span>
    <em><ins>`optional`</ins></em>
     Filter to exclude from traces

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">spacing</span>
    <em><ins>`optional. default`: `32`</ins></em>
     Distance between grid points

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">size</span>
    <em><ins>`optional. default`: `3`</ins></em>
     Grid radius to search

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">height</span>
    <em><ins>`optional. default`: `36`</ins></em>
     Height of bounding box

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">tolerance</span>
    <em><ins>`optional. default`: `5`</ins></em>
     Z tolerance for ground check


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    Array of viable positions



