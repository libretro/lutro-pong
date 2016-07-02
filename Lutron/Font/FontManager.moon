-- Manage loading and setting multiple fonts.
class FontManager
	-- The default font to use.
	new: (defaultName = nil, defaultFont = nil) =>
		@fonts = {}
		if defaultName and defaultFont
			@add(defaultName, defaultFont)

	-- Add a new font to the set.
	add: (name, font) =>
		@fonts[name] = font

	-- Loads all fonts.
	load: (name = nil) =>
		if name
			@fonts[name]\load!
		else
			for name, font in pairs @fonts
			  	font\load()
			return true

	-- Retrieve a Font by name.
	get: (name) =>
		return @fonts[name]

	-- Sets a font to the active font.
	set: (name) =>
		if @fonts[name]
			return @fonts[name]\set!
		return false
