{ settings, config, pkgs, lib, ... }:
{
    home.packages = with pkgs; [
        zsh-powerlevel10k
        fzf
    ];

    programs.zsh = {
        enable = true;
        autosuggestion.enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;
        oh-my-zsh = {
            enable = true;
            plugins = [ "git" "z" "fzf" ];
        };
        history.ignoreAllDups = true;
        initContent = ''
            # Source p10k config if present
            [[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh
        '';

        # Pull in Powerlevel10k theme
        plugins = [
            {
            name = "powerlevel10k";
            src = pkgs.zsh-powerlevel10k;
            file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
            }
        ];
    };
}