# Plugin Example

We will take [Permakill](https://github.com/NutScript/NutScript/blob/3ba2083dfae60d4353b4a7e26bcc51870358c539/plugins/permakill.lua){:target="_blank"} as an example of a simple plugin. This plugin automatically bans a character if it dies in certain ways.

## **Starting**

1. We will create a new file called ```permakill.lua``` in the plugins folder.
2. In it, we will add the following initial information:

    ```lua linenums="1"
    PLUGIN.name = "Permakill"
    PLUGIN.author = "Thadah Denyse"
    PLUGIN.desc = "Adds permanent death in the server options."
    ```

## **Configuration**

We want our plugin to be easily configurated in-game easily, for instance whether it's active at all or dying by falling off a high place will effectively kill our character permanently. Fortunately, NutScript's Framework Libraries are very rich, and will enable us in this process.

In this case, we are going to use ```nut.config.add``` to add our in-game configuration for the server admin.

We want to be able to activate or deactivate permakill as we please, so we will make a configuration that allows us to do so:

```lua linenums="1"
nut.config.add("pkActive", false, "Whether or not permakill is activated on the server.", nil, {
    category = "Permakill"
})
```

* The first argument will be the key, which must the unique, therefore adding a prefix (in this case pk) to it is advisable.

* The second argument is the default value. In this case we will use a boolean value, and we will leave Permakill deactivated by default, therefore false

* The third argument is a description, so the admin knows what he is doing when changing the argument.

* The fourth argument is about our configuration using a callback function. The callback will trigger every time the configuration is changed. This doesn't apply to us so we will set it as ```nil```

* The fifth argument is the data of the configuration, which is a table. In this case, we will set what category should the plugin have inside the Configuration tab, therefore ```{category = "Permakill"}```

The same goes for the configuration about the world being able to permakill us:

```lua linenums="1"
nut.config.add("pkWorld", false, "Whether or not world and self damage produce permanent death.", nil, {
    category = "Permakill"
})
```

## **Functions**

To apply our configurations, we will want somewhere to call them. In this case we will call them inside functions, but it's not limited to them. You can call them from item functions, entities, derma and so on.

We will use the default Gmod functions [PlayerDeath](https://wiki.facepunch.com/gmod/GM:PlayerDeath) and [PlayerSpawn](https://wiki.facepunch.com/gmod/GM:PlayerSpawn), but prefixed with ```PLUGIN``` instead of ```GM```, to prevent overriding them.

### **PlayerDeath**

1. First, the ```PlayerDeath``` function. The function will have the same arguments as its ```GM``` counterpart, therefore:
    ```lua linenums="1"
    function PLUGIN:PlayerDeath(client, inflictor, attacker)
    ```

2. We don't want to affect our client, but the client's character, therefore we will create a local variable calling the Framework Class ```client:getChar```:
    ```lua linenums="1" hl_lines="2"
    function PLUGIN:PlayerDeath(client, inflictor, attacker)
        local character = client:getChar()
    ```

3. Next, we will want to know if Permakill is active in the server. This is where our Framework Library ```nut.config.get``` enters the scene:
    ```lua linenums="1" hl_lines="4"
    function PLUGIN:PlayerDeath(client, inflictor, attacker)
        local character = client:getChar()

        if (nut.config.get("pkActive")) then
    ```

4. After that, we want to know if World Damage has been activated inside the server and we want to make it **not permanently kill people if it's deactivated**, therefore:
    ```lua linenums="1" hl_lines="5-7"
    function PLUGIN:PlayerDeath(client, inflictor, attacker)
        local character = client:getChar()

        if (nut.config.get("pkActive")) then
            if not (nut.config.get("pkWorld") and (client == attacker or inflictor:IsWorld() then
                return
            end
    ```

    !!! note
        The ```return``` will invalidate everything that comes after that line, making the permakill ineffective if the World Damage is set to false

5. Now that we have verified everything we wanted, we will use ```character:setData``` so that we know that character has been permakilled, this ends the PlayerDeath function as well:
    ```lua linenums="1" hl_lines="8"
    function PLUGIN:PlayerDeath(client, inflictor, attacker)
        local character = client:getChar()

        if (nut.config.get("pkActive")) then
            if not (nut.config.get("pkWorld") and (client == attacker or inflictor:IsWorld() then
                return
            end
            character:setData("permakilled", true)
        end
    end
    ```

### **PlayerSpawn**

Now that we have set the ways the player is permakilled, we will set what happens when a permakilled player tries to spawn again.

1. First, we will get the player's character:
    ```lua linenums="1"
    function PLUGIN:PlayerSpawn(client)
        local character = client:getChar()
    end
    ```

2. After that, we will verify if permakill is active on the server and we will use ```character:getData``` to verify if the player has been permakilled. If both turn out to be true, we will ban that character with ```character:ban```, so the player can't use it again:
    ```lua linenums="1" hl_lines="3-5"
    function PLUGIN:PlayerSpawn(client)
        local character = client:getChar()
        if (nut.config.get("pkActive") and character and character:getData("permakilled")) then
            character:ban()
        end
    end
    ```

This finishes our plugin. You can access the full code [here](https://github.com/NutScript/NutScript/blob/3ba2083dfae60d4353b4a7e26bcc51870358c539/plugins/permakill.lua){:target="_blank"}.