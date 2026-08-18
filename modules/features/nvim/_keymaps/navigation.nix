{ ... }: {
  vim.keymaps = [
    {
      key = "<leader>e";
      action = ":Neotree toggle<CR>";
      mode = "n";
      desc = "Toggle File Explorer";
    }
    {
      key = "<leader>ff";
      action = ":Telescope find_files<CR>";
      mode = "n";
      desc = "Find Files";
    }
    {
      key = "<leader>fg";
      action = ":Telescope live_grep<CR>";
      mode = "n";
      desc = "Live Grep";
    }
  ];
}
