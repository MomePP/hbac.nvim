local telescope = require('telescope')

return telescope.register_extension({
	setup = require('hbac.config').setup,
	exports = {
		buffers = require('hbac.telescope').pin_picker,
	}
})
