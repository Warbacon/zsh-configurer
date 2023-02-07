# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# LOAD CONFIGURATIONS --------------------------------------------------------------------
source "$ZDOTDIR/plugin-config.zsh"
source "$ZDOTDIR/options.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/key-bindings.zsh"

# FZF COLORCHEME (https://github.com/base16-project/base16-fzf) --------------------------
if [[ -f "$ZDOTDIR/fzf-theme.zsh" ]]; then
    source "$ZDOTDIR/fzf-theme.zsh"
fi

# LOAD POWERLEVEL10K PROMPT --------------------------------------------------------------
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
