# nut.anim
Animation Library.

Provides animation mappings and utilities for different player models and states.
Supports model class assignments and forced animation sequences for roleplay purposes.
## Functions
??? realm-shared "<a id=nut.anim.setModelClass></a>nut.anim.setModelClass (model, class)"
    ##### sh_nut.anim.setModelClass {#nut.anim.setmodelclass}
    Sets the animation class for a specified model.  Use this to fix models using incorrect animations or T-Posing

	!!! warning "This function does not transform models"
		`nut.anim.setModelClass` doesn't give a model animations, it translates gmod inputs meant for typical playermodels to those used by stuff like NPC models.
		If a model does not have animations baked into them, it won't play them.
		There are ways to achieve that but not base NS.

	<h3>Supported classes:</h3>

	|Class|Description|
	|-----------|-----------|
	|`citizen_male`| Male Human NPC animations. Use this for models using the male HL2 Citizen model as a base |
	|`citizen_female`| Female Human NPC animations. Use this for models using the female HL2 Citizen model as a base |
	|`metrocop`| Metrocop animations. Use this for models using the HL2 Metrocop model as a base |
	|`overwatch`| Overwatch animations. Use this for models using the HL2 Overwatch Elite model as a base |
	|`vort`| Vortiguant animations. Use this for models using the HL2 Vort model as a base |
	|`zombie`| Zombie animations. Use this for models using the HL2 Zombie model as a base |
	|`fastZombie`| Fast Zombie animations. Use this for models using the HL2 Fast Zombie model as a base |
	|`player`| Player animations. Use this for models meant to be used as player models (typically have `/player/` in their model path) |

    <h3>Parameters:</h3>
    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">model</span>
     The model path to assign an animation class to

    <span class="types"><a class="type" href="https://www.lua.org/manual/5.1/manual.html#5.4">string</a></span>
    <span class="parameter">class</span>
     The animation class to assign



??? realm-shared "<a id=nut.anim.getModelClass></a>nut.anim.getModelClass (model)"
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



