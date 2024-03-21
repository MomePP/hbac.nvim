local telescope = require('telescope')

return telescope.register_extension({
	setup = require('hbac.setup').setup,
	exports = {
		buffers = require('hbac.telescope').pin_picker,
	}
})
