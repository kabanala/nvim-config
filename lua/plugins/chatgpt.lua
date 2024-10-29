local conf = {
  api_host_cmd = 'echo -n ""',
  api_key_cmd = ''
  api_type_cmd = 'echo azure',
  azure_api_base_cmd = ''
  azure_api_engine_cmd = 'echo chat',
  azure_api_version_cmd = 'echo 2024-02-15-preview'
}
return {
  "kabanala/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
      openai_params = {
      model = "gpt-4o",
      max_tokens = 800,
      temperature = 0.7,
      frequency_penalty = 0,
      presence_penalty = 0,
      top_p = 0.95,
      stop = null}})
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    },
    extra_curl_params = {
    }
}
