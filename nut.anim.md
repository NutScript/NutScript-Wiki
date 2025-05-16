## Functions
1. [nut.anim.setModelClass (model, class)](#nut.anim.setModelClass)
2. [nut.anim.getModelClass (model)](#nut.anim.getModelClass)
3. [playerMeta:forceSequence (sequence, callback[, time[, noFreeze=false]])](#playerMeta:forceSequence)
???+ realm-shared "<a id=nut.anim.setModelClass> </a>nut.anim.setModelClass (model, class)"
    Sets the animation class for a specified model.
    ### Parameters:
    <span class="parameter">model</span>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>

     The model for which to set the animation class.


    <span class="parameter">class</span>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>

     The animation class to set.



???+ realm-shared "<a id=nut.anim.getModelClass> </a>nut.anim.getModelClass (model)"
    Gets the animation class for a specified model.  If an animation class has not yet been set for the model, it sets a default animation class based on the model's name.
    ### Parameters:
    <span class="parameter">model</span>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>

     The model for which to get the animation class.


    ### Returns:
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>

    The animation class for the specified model.


???+ realm-server "<a id=playerMeta:forceSequence> </a>playerMeta:forceSequence (sequence, callback[, time[, noFreeze=false]])"
    Forces the player to play a specific animation sequence.
    ### Parameters:
    <span class="parameter">sequence</span>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>

     The name of the sequence to play.


    <span class="parameter">callback</span>
    <span class="types"><span class="type">function</span></span>

     An optional function to call when the animation sequence is finished.


    <span class="parameter">time</span>
    <span class="types"><span class="type">integer</span></span>
    <em>optional</em>

     The time in seconds to play the animation sequence. If not set, it will use the default time for the sequence.


    <span class="parameter">noFreeze</span>
    <span class="types"><span class="type">boolean</span></span>
    <em>optional. default: </em>false

     Whether to freeze the player during the animation sequence.


    ### Returns:
    <span class="types"><span class="type">number</span></span>

    The time in seconds for the animation sequence to complete, or false if the sequence is invalid.


