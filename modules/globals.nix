{ ... }:
{
  perSystem = { ... }: {
    _module.args.constants = import ./_lib/constants.nix { };
  };
}
