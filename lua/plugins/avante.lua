return {
  "yetone/avante.nvim",
  lazy = false,
  opts = {
    provider = "ollama",
    providers = {
      ollama = {
        endpoint = "http://127.0.0.1:11434",
        model = "qwen2.5-coder:7b",
        timeout = 30000,
        extra_request_body = {
          options = {
            temperature = 0.75,
            num_ctx = 7168,
            keep_alive = "5m",
          },
        },
      },
    },
  },
}
