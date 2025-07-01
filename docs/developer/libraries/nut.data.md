# nut.data
Data Persistence Utility.

Handles saving, retrieving, and deleting persistent framework or schema data in the `nutscript/` folder.
## Functions
???+ realm-server "<a id=nut.data.set></a>nut.data.set (key, value, global, ignoreMap)"
    ##### sv_nut.data.set {#nut.data.set}
    Set and save data in the nutscript folder.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The name of the data file

    <span class="types">vararg</span>
    <span class="parameter">value</span>
     The value to save (must be encodable via pon)

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">global</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, shared across all schemas

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">ignoreMap</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, ignores map-specific folder


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    Full file path where the data was saved



???+ realm-server "<a id=nut.data.get></a>nut.data.get (key, default, global, ignoreMap, refresh)"
    ##### sv_nut.data.get {#nut.data.get}
    Retrieves a saved value from the nutscript folder.
	 Optionally returns cached value unless refreshed.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The data key

    <span class="types">vararg</span>
    <span class="parameter">default</span>
     Value to return if key is not found

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">global</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, shared across all schemas

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">ignoreMap</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, ignores map-specific folder

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">refresh</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, bypasses cache and reads file


    <h3>Returns:</h3>
    <span class="types"><span class="type">any</span></span>
    The stored value


     <h4>Or</h4>
    <span class="types"><span class="type">default</span></span>
    The fallback value if not found



???+ realm-server "<a id=nut.data.delete></a>nut.data.delete (key, global, ignoreMap)"
    ##### sv_nut.data.delete {#nut.data.delete}
    Deletes a saved value.
	 Removes both the file and its cache entry.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">key</span>
     The data key

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">global</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, shared across all schemas

    <span class="types"><span class="type">boolean</span></span>
    <span class="parameter">ignoreMap</span>
    <em><ins>`optional. default`: `false`</ins></em>
     If true, ignores map-specific folder


    <h3>Returns:</h3>
    <span class="types"><span class="type">bool</span></span>
    True if deleted, false if not found



