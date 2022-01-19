vim.g.coq_settings = {
	auto_start = 'shut-up',
	clients = {
		lsp = {
			resolve_timeout=1000
		}
	}
}

-- vim.g.coq_settings.clients.lsp.resolve_timeout=0.66

coq = require("coq")

-- coq.clients.lsp.resolve_timeout=0.66
