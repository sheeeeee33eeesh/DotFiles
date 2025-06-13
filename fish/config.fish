# Setup Plugins With The Following
# Bootstrap

if status is-interactive
  # Bootstrap Fisher and Installing Plugins
  if ! type -q fisher
      curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && cat ~/.config/fish/fish_plugins | while read i ; fisher install $i ; end && tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='12-hour format' --rainbow_prompt_separators=Round --powerline_prompt_heads=Round --powerline_prompt_tails=Round --powerline_prompt_style='Two lines, character' --prompt_connection=Solid --powerline_right_prompt_frame=No --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Sparse --icons='Many icons' --transient=No
  end

  # If Not In A NVIM Terminal cd Desktop
  if test -z $NVIM
    cd ~/Desktop
  end

  # Environment Variables
  set -x LC_ALL en_US.UTF-8  
  set -x LANG en_US.UTF-8
  set -x PAGER cat
  set -x EDITOR nvim
  set -x PAGER cat
  fish_add_path ~/.local/bin/

  # Options
  set -U fish_greeting
  set -g theme_nerd_fonts yes

  # Binds
    # FZF
      # Directories
        # CTRL + ALT + F
      # Git Log
        # CTRL + ALT + L
      # Git Status 
        # CTRL + ALT + S
      # History
        # CTRL + R
      # Processes
        # CTRL + ALT + P
      # Variables
        # CTRL + V

  # ALT+L | ls -lah
  bind \el 'echo -e "\n" ; ls -lah ; echo -e "\n" ; commandline -f repaint'

  # Aliases
    # Convert STDOUT Aliases 
    alias ENCODEHEX="xxd -p | tr -d '\n'"
    alias DECODEHEX="xxd -r -p"
    alias SUM='tr "\n" "+"| sed "s/.\$//g"| math'
    alias RENDER="wezterm imgcat"

    # Editing Dotfiles
    alias TMUX="cd ; nvim ~/.tmux.conf ; cd -"
    alias WEZTERM="cd ~/ ; nvim ./.wezterm.lua ; cd -"
    alias QUTEBROWSER="cd ~/.config/qutebrowser/ && nvim config.py && cd -"
    alias FISHRC="cd ~/.config/fish/ && nvim config.fish && cd -"
    alias NVIM="cd ~/.config/nvim/ ; nvim ~/.config/nvim/init.lua; cd -"
    alias HYPR="cd ~/.config/hypr/;nvim ~/.config/hypr/hyprland.conf ; cd -"
    alias WAYBAR="cd ~/.config/waybar/ ; nvim ~/.config/waybar/config.jsonc ; cd -"

    # Autoset Commands
    alias ip="ip -c"
    alias ls='ls --color'
    alias grep='grep --color=always'
    alias less='less -R'
end

## Loop Examples
# for i in (seq 00 99) ; echo $i ; end
# while true ; ls -l ; end
# while read line ; echo $line ; end < file.txt
# cat file.txt | while read line ; echo $line ; end
