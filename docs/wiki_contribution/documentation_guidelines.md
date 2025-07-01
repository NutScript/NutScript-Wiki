# Documentation Guidelines

NutScript Wiki uses [a modified version of LDoc](https://github.com/lunarmodules/ldoc) to automatically generate markdown outputs. As such, a strict template must be used to ensure that all the documentation is generated properly.

## Beginning of the documented .lua file

### Struct Summary and Description

The first thing required in a documented file is a brief summmary and description of the module/class/etc. being documented.

The **summary** consists of a single sentence and MUST end with a period. It appears in the [reference sheet](../developer/index.md) to explain what the struct is and does.

The **description** can contain additional information about the struct, with detailed information, examples and warnings. The description only appears in the struct's documentation page.

The best way to format the summary and description are within a code block.

```lua linenums="1"
--[[--
This is a summary.

This is a description. The description can be as long as it needs to be, so long as its all within the comment block. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi iaculis ligula at nibh facilisis luctus. Phasellus faucibus metus at neque euismod, eget fringilla elit porta.
Proin a neque eu augue pretium posuere. Etiam nec purus sed nibh gravida posuere.
]]
```

### Module Declaration

Each .lua file that contains documented structs/functions must begin with a module declaration.

Valid declarations are:

|Declaration| Description|
|-------|------|
|`@module`| A library, such as [`nut.char`](../developer/libraries/nut.char.md) or [`nut.config`](../developer/libraries/nut.config.md)|
|`@classmod`| A class, such as [`Character`](../developer/classes/Character.md) or [`Inventory`](../developer/classes/Inventory.md)|
|`@hook`| A collection of functions that can be used in hooks, such as `GM:Nick(client)`|

Additionally, the struct name is required, after the declaration type. This will be the name under which the documentation will save under.

```lua linenums="1" hl_lines="7"
--[[--
This is a summary.

This is a description. The description can be as long as it needs to be, so long as its all within the comment block. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi iaculis ligula at nibh facilisis luctus. Phasellus faucibus metus at neque euismod, eget fringilla elit porta.
Proin a neque eu augue pretium posuere. Etiam nec purus sed nibh gravida posuere.
]]
-- @classmod character
```

## Documenting Functions

### Function Description

All functions that required generated documentation must start with a comment with 3 dashes (`---`) with a description of the function.

```lua linenums="1" hl_lines="1"
--- A function that takes 3 arguments
function exampleFunc(a, b, c)
...
end
```

### Realm

All functions exist within a realm, either `client`, `server`, or `shared` (both). The realm of the function can be defined with the `--@realm` tag. If omitted, the realm is assumed to be `shared` by default.

```lua linenums="1" hl_lines="2"
--- A shared function that takes 3 arguments
-- @realm shared
function exampleFunc(a, b, c)
...
end
```

### Arguments

Each argument required by the function needs to be documented per line. The tag depends on the argument type:

|Tag|Argument|
|-----|-----|
|`-- @int`|An integer|
|`-- @number`|A generic number, can be a float|
|`-- @string`|A string|
|`-- @bool`|A boolean|
|`-- @tab`|A table|
|`-- @func`|A function|
|`-- @entity`|[An Entity](https://wiki.facepunch.com/gmod/Entity)|
|`-- @client`|A Client Entity (ie [Player](https://wiki.facepunch.com/gmod/Player))|
|`-- @character`|A NutScript character object|
|`-- @vector`|[A Vector object](https://wiki.facepunch.com/gmod/Vector)|
|`-- @angle`|[An Angle object](https://wiki.facepunch.com/gmod/Angle)|
|`-- @param`|A generic parameter without a specific type. The type specified will be "vararg"|
|`-- @tparam [type]`|A parameter with a custom type. The type name comes before the argument name|

After the tag, the name of the argument is defined, followed by its description.

```lua linenums="1" hl_lines="3 4 5"
--- A function that takes 3 number arguments
-- @realm shared
-- @int a the numerator
-- @int b the denominator
-- @int c the rounding number
function exampleFunc(a, b, c)
...
end
```

!!! warning "@tparam type and name"
    When using `@tparam`, the custom **type** comes before the name.

    ```lua
    -- @tparam char newChar the new character
    ```

#### Optional and Default Arguments

If an argument is optional, the `[opt]` modifier is added. If the argument has a default value if none is provided, the `[opt='default']` modifier is used, where `'default'` is the default value.

```lua linenums="1" hl_lines="3 5"
--- A function that takes 3 number arguments
-- @realm shared
-- @int[opt=2] a the numerator, which if not provided, will use 2 as a default
-- @int b the denominator
-- @int[opt] c the optional rounding number
function exampleFunc(a, b, c)
...
end
```

### Returns

If the function has one or more return values, you can use the `-- @return` tag. If the returned value has a specific type, use `-- @treturn [type]` instead

```lua linenums="1" hl_lines="6 7"
--- A function that takes 3 number arguments
-- @realm shared
-- @int[opt=2] a the numerator, which if not provided, will use 2 as a default
-- @int b the denominator
-- @int[opt] c the optional rounding number
-- @treturn number a returned number
-- @return another custom returned value that doesn't have a specific type
function exampleFunc(a, b, c)
...
end
```

### Usage

If you want to provide a usage example of the function, you can use the `-- @usage` tag.

If the usage example can fit in a single line, the example can be typed in the same line as the tag
```lua linenums="1" hl_lines="1"
-- @usage local calcValue = exampleFunc(1, 2, 3)
```

Alternatively, if you require more than one line, for instance for context, comments until the next tag will be used in the usage example

```lua linenums="1" hl_lines="8 9 10"
--- A function that takes 3 number arguments
-- @realm shared
-- @int[opt=2] a the numerator, which if not provided, will use 2 as a default
-- @int b the denominator
-- @int[opt] c the optional rounding number
-- @treturn number a returned number
-- @return another custom returned value that doesn't have a specific type
-- @usage
-- local a, b, c = 1, 2, 3
-- local calcValue = exampleFunc(a, b, c)

function exampleFunc(a, b, c)
...
end
```

### Other tags

1. `-- @internal` marks the function as internal (This is used internally - although you're able to use it you probably shouldn't.)
2. `-- @see` links to other documentation, for context or further usage
3. `-- @pluginwarning [pluginName]` adds a warning that the function is defined within a plugin, and as such its functionality might differ in different schemas

## Sections

Sometimes, especially with plugins, you may need to manually define sections within a file, for instance when meta-methods are located between library functions. You can easily define a new section with the `-- @section` tag. If a section tag appears multiple times within a file, the documented functions will be sorted into one place.

```lua linenums="1"
--- Section Name
-- @section hooks
```

## Result

The example documentation above would provide the following result on the developer wiki

???+ realm-shared "<a id=inventory:exampleFunc></a>inventory:exampleFunc (a, b, c)"
    ##### sh_inventory:exampleFunc
    A function that takes 3 number arguments
    <h3>Parameters:</h3>
    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">a</span>
    <ins><em>optional. default: </em>2</ins>
    the numerator, which if not provided, will use 2 as a default

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">b</span>
    the denominator

    <span class="types"><span class="type">integer</span></span>
    <span class="parameter">c</span>
    <ins><em>optional</em></ins>
    the optional rounding number


    <h3>Returns:</h3>
    <span class="types"><span class="type">number</span></span>
    a returned number

    another custom returned value that doesn't have a specific type


    <h3>Usage:</h3>
    <ul>
        ```lua
        local a, b, c = 1, 2, 3
		local calcValue = exampleFunc(a, b, c)

        ```
    </ul>