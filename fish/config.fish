# Install Fisher Plugin Manager With The Following Command:
# curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

if status is-interactive
   # Home Dir
   cd ~/Desktop/

   # Environment Variables
   set LC_ALL en_US.UTF-8  
   set LANG en_US.UTF-8
   set PAGER cat
   set EDITOR nvim

   # Options
   set -U fish_greeting
   set -g theme_nerd_fonts yes

   fish_add_path ~/.local/bin/

   # Binds
   fzf_configure_bindings --variables=\e\cv
   bind \el 'ls -lah ; echo -e "\n" ; commandline -f repaint'

   # Aliases
   alias WEZTERM="nvim ~/.wezterm.lua"
   alias FISHRC="cd ~/.config/fish/ && nvim config.fish && cd -"
   alias ls='ls --color'
   alias LOWER="tr '[:upper:]' '[:lower:]'"
   alias UPPER="tr '[:lower:]' '[:upper:]'"
   alias NVIM="cd ~/.config/nvim/ ; nvim ~/.config/nvim/init.lua; cd -"
   alias HYPR="cd ~/.config/hypr/;nvim ~/.config/hypr/hyprland.conf ; cd -"
   alias WAYBAR="cd ~/.config/waybar/ ; nvim ~/.config/waybar/config.jsonc ; cd -"
   alias I3="cd ~/.config/i3 ; nvim ~/.config/i3/config ; cd -"
   alias PICOM="nvim ~/.config/picom.conf"
   alias KITTYRC="nvim ~/.config/kitty/kitty.conf"
   alias ip="ip -c"
   alias SUM='tr "\n" "+"| sed "s/.\$//g"| math'
   alias RENDER="wezterm imgcat"
   alias ssh="env TERM=xterm-256color ssh"


end

## Loop Examples
# for i in (seq 00 99) ; echo $i ; end
# while true ; ls -l ; end
# while read line ; echo $line ; end < file.txt
# cat file.txt | while read line ; echo $line ; end
