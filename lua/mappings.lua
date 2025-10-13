require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<A-S-Left>",  ":vertical resize -5<CR>", opts)
map("n", "<A-S-Right>", ":vertical resize +5<CR>", opts)
map("n", "<A-S-Up>",    ":resize +2<CR>", opts)
map("n", "<A-S-Down>",  ":resize -2<CR>", opts)

map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", opts)        -- старт/продолжение
map("n", "<F10>", "<cmd>lua require'dap'.step_over()<CR>", opts)      -- шаг через
map("n", "<F11>", "<cmd>lua require'dap'.step_into()<CR>", opts)      -- шаг внутрь
map("n", "<F12>", "<cmd>lua require'dap'.step_out()<CR>", opts)       -- шаг из функции
map("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts) -- брейкпоинт
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", opts)       -- REPL
map("n", "<leader>dt", "<cmd>lua require'dap-go'.debug_test()<CR>", opts)    -- отладка теста
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", opts)  -- открыть/закрыть UI
map("n", "<leader>dus", function()
  local widgets = require('dap.ui.widgets')
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar", noremap = true, silent = true })
