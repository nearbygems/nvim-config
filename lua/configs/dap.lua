local dap = require("dap")

-- Адаптер для Go через Delve
dap.adapters.go = function(callback, config)
  local handle
  local pid_or_err
  local port = 38697
  handle, pid_or_err = vim.loop.spawn("dlv", {
    args = {"dap", "-l", "127.0.0.1:" .. port},
    detached = true
  }, function(code)
    handle:close()
    print("Delve exited with code: " .. code)
  end)
  -- Ждём запуска Delve
  vim.defer_fn(function()
    callback({ type = "server", host = "127.0.0.1", port = port })
  end, 100)
end

-- Конфигурации для запуска Go
dap.configurations.go = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",       -- запускает текущий файл
  },
  {
    type = "go",
    name = "Debug Package",
    request = "launch",
    program = "${fileDirname}", -- запускает пакет текущего файла
  },
}

