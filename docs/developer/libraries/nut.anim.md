# nut.anim
Animation Library.

Provides animation mappings and utilities for different player models and states.
Supports model class assignments and forced animation sequences for roleplay purposes.
## Functions
???+ realm-shared "<a id=nut.anim.setModelClass></a>nut.anim.setModelClass (model, class)"
    ##### sh_nut.anim.setModelClass {#nut.anim.setmodelclass}
    Sets the animation class for a specified model.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">model</span>
     The model path to assign an animation class to

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">class</span>
     The animation class to assign



???+ realm-shared "<a id=nut.anim.getModelClass></a>nut.anim.getModelClass (model)"
    ##### sh_nut.anim.getModelClass {#nut.anim.getmodelclass}
    Gets the animation class for a specified model.
	 Falls back to default classes based on model name if not explicitly set.
    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">model</span>
     The model path to check


    <h3>Returns:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    The animation class for this model



