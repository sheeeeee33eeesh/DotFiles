# Install Fisher Plugin Manager With The Following Command:
# curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
if status is-interactive
  # If Not In A NVIM Terminal cd Desktop
  if test -z $NVIM
    cd ~/Desktop
  end

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
   alias ESP=". ~/.esp-idf/export.fish"
   alias WEZTERM="nvim ~/.wezterm.lua"
   alias QUTEBROWSER="cd ~/.config/qutebrowser/ && nvim config.py && cd -"
   alias FISHRC="cd ~/.config/fish/ && nvim config.fish && cd -"
   alias ls='ls --color'
   alias NVIM="cd ~/.config/nvim/ ; nvim ~/.config/nvim/init.lua; cd -"
   alias HYPR="cd ~/.config/hypr/;nvim ~/.config/hypr/hyprland.conf ; cd -"
   alias WAYBAR="cd ~/.config/waybar/ ; nvim ~/.config/waybar/config.jsonc ; cd -"
   alias ip="ip -c"
   alias SUM='tr "\n" "+"| sed "s/.\$//g"| math'
   alias RENDER="wezterm imgcat"

end

## Loop Examples
# for i in (seq 00 99) ; echo $i ; end
# while true ; ls -l ; end
# while read line ; echo $line ; end < file.txt
# cat file.txt | while read line ; echo $line ; end
