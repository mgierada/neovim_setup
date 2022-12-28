-- import comment plugin safely
local setup, dap_python = pcall(require, "dap-python")
if not setup then
	return
end

-- enable nvim-dap-python
dap_python.setup("~/.virtualenvs/debugpy/bin/python")
dap_python.test_runner = "pytest"
