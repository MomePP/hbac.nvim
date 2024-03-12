local M = {
	autoclose_enabled = false,
}

M.toggle_pin = function(bufnr)
	local utils = require("hbac.utils")
	local pins = utils.int_explode(vim.g.Hbac_buffers or "")
	if vim.tbl_contains(pins, bufnr) then
		local filtered_pins = vim.tbl_filter(function(pin) return pin ~= bufnr end, pins)
		vim.g.Hbac_buffers = table.concat(filtered_pins, ",")
		return false
	end
	table.insert(pins, bufnr)
	vim.g.Hbac_buffers = table.concat(pins, ",")
	return true
end

M.is_pinned = function(bufnr)
	local utils = require("hbac.utils")
	local pins = utils.int_explode(vim.g.Hbac_buffers or "")
	return vim.tbl_contains(pins, bufnr)
end

return M
