# nut.db
Database Module.

Core system for handling all database operations in NutScript.
## Functions
??? realm-shared "<a id=nut.db.connect></a>nut.db.connect (callback, reconnect)"
    ##### sh_nut.db.connect {#nut.db.connect}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Connects to the database
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Function to call after connection

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">reconnect</span>
    <em><ins>`optional`</ins></em>
     Whether this is a reconnection attempt



??? realm-server "<a id=nut.db.wipeTables></a>nut.db.wipeTables (callback)"
    ##### sv_nut.db.wipeTables {#nut.db.wipetables}
    Wipes all NutScript database tables
    <h3>Parameters:</h3>
    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Function to call after wipe



??? realm-shared "<a id=nut.db.loadTables></a>nut.db.loadTables ()"
    ##### sh_nut.db.loadTables {#nut.db.loadtables}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Loads/creates database tables

??? realm-shared "<a id=nut.db.waitForTablesToLoad></a>nut.db.waitForTablesToLoad ()"
    ##### sh_nut.db.waitForTablesToLoad {#nut.db.waitfortablestoload}
    !!! warning "Internal"
        This is used internally - although you're able to use it you probably shouldn't.
    Waits for tables to finish loading
    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise that resolves when tables are loaded



??? realm-shared "<a id=nut.db.convertDataType></a>nut.db.convertDataType (value, noEscape)"
    ##### sh_nut.db.convertDataType {#nut.db.convertdatatype}
    Converts Lua data types to SQL format
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">value</span>
     Value to convert

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">noEscape</span>
    <em><ins>`optional`</ins></em>
     Whether to skip escaping


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    SQL-formatted value



??? realm-shared "<a id=nut.db.insertTable></a>nut.db.insertTable (value, callback, dbTable)"
    ##### sh_nut.db.insertTable {#nut.db.inserttable}
    Inserts data into a table
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">value</span>
     Key-value pairs to insert

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Query callback

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">dbTable</span>
    <em><ins>`optional`</ins></em>
     Table name (default "characters")



??? realm-shared "<a id=nut.db.updateTable></a>nut.db.updateTable (value, callback, dbTable, condition)"
    ##### sh_nut.db.updateTable {#nut.db.updatetable}
    Updates data in a table
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">value</span>
     Key-value pairs to update

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Query callback

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">dbTable</span>
    <em><ins>`optional`</ins></em>
     Table name (default "characters")

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">condition</span>
    <em><ins>`optional`</ins></em>
     WHERE condition



??? realm-shared "<a id=nut.db.select></a>nut.db.select (fields, dbTable, condition, limit)"
    ##### sh_nut.db.select {#nut.db.select}
    Selects data from a table
    <h3>Parameters:</h3>
    <span class="types">vararg</span>
    <span class="parameter">fields</span>
     Fields to select (<a href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a>  or <code>table of strings</code>)

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">dbTable</span>
    <em><ins>`optional`</ins></em>
     Table name (default "characters")

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">condition</span>
    <em><ins>`optional`</ins></em>
     WHERE condition

    <span class="types"><span class="type">number</span></span>
    <span class="parameter">limit</span>
    <em><ins>`optional`</ins></em>
     Result limit


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to query results



??? realm-shared "<a id=nut.db.upsert></a>nut.db.upsert (value, dbTable)"
    ##### sh_nut.db.upsert {#nut.db.upsert}
    Upserts (insert or update) data
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">value</span>
     Key-value pairs

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">dbTable</span>
    <em><ins>`optional`</ins></em>
     Table name (default "characters")


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to query results



??? realm-shared "<a id=nut.db.delete></a>nut.db.delete (dbTable, condition)"
    ##### sh_nut.db.delete {#nut.db.delete}
    Deletes data from a table
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">dbTable</span>
    <em><ins>`optional`</ins></em>
     Table name (default "character")

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">condition</span>
    <em><ins>`optional`</ins></em>
     WHERE condition


    <h3>Returns:</h3>
    <span class="types"><span class="type">promise</span></span>
    Promise resolving to query results



??? realm-shared "<a id=nut.db.prepare></a>nut.db.prepare (key, query, types)"
    ##### sh_nut.db.prepare {#nut.db.prepare}
    Prepares a SQL statement
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Unique identifier

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">query</span>
     SQL query with <code>?</code> placeholders

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.5">table</a></span>
    <span class="parameter">types</span>
     Parameter types (MYSQLOO_ constants)



    <h3>Usage:</h3>
    <ul>
        ```lua linenums="1"
        nut.db.prepare("itemData", "UPDATE nut_items SET _data = ? WHERE _itemID = ?", {MYSQLOO_STRING, MYSQLOO_INTEGER})

        ```
    </ul>
??? realm-shared "<a id=nut.db.preparedCall></a>nut.db.preparedCall (key, callback, ...)"
    ##### sh_nut.db.preparedCall {#nut.db.preparedcall}
    Executes a prepared statement
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     Prepared statement identifier

    <span class="types"><span class="type">function</span></span>
    <span class="parameter">callback</span>
    <em><ins>`optional`</ins></em>
     Query callback

    <span class="types">vararg</span>
    <span class="parameter">...</span>
     Parameters for the statement



