An example of a codeblock in Lua

```lua title="colorAutoTheme" linenums="1" hl_lines="6-7"
--This is an example test code
nut.config.add("colorAutoTheme", "dark", "Whether secondary and background colours generated from the main color should be dark or light themed.\nGenerated colors will be estimates and not guaranteed to look good.\nDisable to enable manual tuning", function()
	if CLIENT then hook.Run("nutUpdateColors") end
end, {
	form = "Combo",
	category = "appearance",
	options = {"dark", "light", "disabled"}
	}
)
```

This page exists as a temporary sandbox to test mkdocs features and functionality, it is WIP