{ ... }:
{
  imports = [
    ./markdown.nix
    ./nix.nix
    ./rust.nix

  ];

  vim.lsp.enable = true;
  vim.languages = {
    enableFormat = true;
    enableDAP = true;
    enableExtraDiagnostics = true;
    enableTreesitter = true;
  };
}
