{ pkgs, ... }: {
  vim = {
    theme.enable = false;

    extraPlugins = {
      base16-nvim = {
        package = pkgs.vimPlugins.base16-nvim;
      };
    };

    luaConfigPost = ''
      -- 1. Explicitly add ~/.config/nvim/lua to Neovim's package search path
      local home = os.getenv("HOME")
      if home then
        package.path = package.path .. ";" .. home .. "/.config/nvim/lua/?.lua"
      end

      -- 2. Matugen theme application
      local function apply_theme()
        -- Clear cached version of matugen if it exists
        package.loaded['matugen'] = nil

        local ok, matugen = pcall(require, 'matugen')
        if ok and matugen.setup then
          matugen.setup()
        else
          -- Fallback colorscheme if matugen.lua hasn't been generated yet by Noctalia
          vim.cmd("colorscheme base16-default-dark")
        end
      end

      -- 3. Register SIGUSR1 signal listener for live reload
      local signal = vim.uv.new_signal()
      signal:start(
        'sigusr1',
        vim.schedule_wrap(function()
          apply_theme()
        end)
      )

      -- Initialize theme
      apply_theme()
    '';
  };
}
