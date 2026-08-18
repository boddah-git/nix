{ ... }: {
  vim.keymaps = [
    {
      key = "<leader>xx";
      action = ":TroubleToggle<CR>";
      mode = "n";
      desc = "Toggle Trouble Diagnostics";
    }
    {
      key = "gd";
      action = ":LspSaga lsp_finder<CR>";
      mode = "n";
      desc = "LSP Finder (Definition / References)";
    }
  ];
}
