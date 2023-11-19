return{
	{'mfussenegger/nvim-lint',
	config = function()
	require('lint').linters_by_ft = {
	cpp = {'cpplint'},
	js = {'eslint_d'},
	py = {'ruff'}
	}
	end,}
}
