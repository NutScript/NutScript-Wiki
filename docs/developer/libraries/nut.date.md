# nut.date
Date/Time module.

Handles date and time calculations, formatting, and synchronization between server/client.
## Functions
??? realm-server "<a id=nut.date.syncClientTime></a>nut.date.syncClientTime (client)"
    ##### sv_nut.date.syncClientTime {#nut.date.syncclienttime}
    Sets currency display properties (server only)
    <h3>Parameters:</h3>
    <span class="types"><span class="type">Client</span></span>
    <span class="parameter">client</span>
     Player to sync with



??? realm-shared "<a id=nut.date.get></a>nut.date.get ()"
    ##### sh_nut.date.get {#nut.date.get}
    Gets current in-game timestamp.  Returns a number that represents the custom time.
	 The year is always the current year for compatibility, though it can be editted with nut.date.getFormatted
    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    Unix timestamp of current in-game time



??? realm-shared "<a id=nut.date.getFormatted></a>nut.date.getFormatted (format, dateNum)"
    ##### sh_nut.date.getFormatted {#nut.date.getformatted}
    Takes the time number if provided, or current time and applies a string format to it
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">format</span>
     Date format string (see os.date)

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">dateNum</span>
    <em><ins>`optional`</ins></em>
     Timestamp to format (defaults to current time)


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Formatted date string



??? realm-server "<a id=nut.date.initialize></a>nut.date.initialize ()"
    ##### sv_nut.date.initialize {#nut.date.initialize}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Checks the time difference between the old time values and current time, and updates month and day to advance in the time difference.
	 Creates a timer that updates the month and day values, in case the server runs continuously without restarts.

??? realm-server "<a id=nut.date.save></a>nut.date.save ()"
    ##### sv_nut.date.save {#nut.date.save}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Save the current actual time.  This allows the time to find the difference in elapsed time between server shutdown and startup

