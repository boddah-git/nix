{ ... }: {
  vim = {
    statusline.lualine.enable = true;
    telescope.enable = true;
    filetree.nvimTree.enable = true;
    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
    };
  };
}
