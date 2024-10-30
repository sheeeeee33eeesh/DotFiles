if status is-interactive
   # Home Dir

   # Environment Variables
   set PAGER cat
   set LC_ALL en_US.UTF-8  
   set LANG en_US.UTF-8
   set PAGER cat
   set EDITOR nvim
   set ROCKYOU /usr/share/wordlists/rockyou.txt
   set COMMON /usr/share/dirb/wordlists/common.txt
   set MEDIUM /usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt
   fish_add_path ~/.local/bin/

   # Options
   set -U fish_greeting
   set -g theme_nerd_fonts yes

   # Binds
   fzf_configure_bindings --variables=\e\cv
   bind \el 'ls -lah'

   # Aliases
   alias FISHRC="cd ~/.config/fish/ && nvim config.fish && cd -"
   alias ls='ls --color'
   alias vim='nvim'
   alias c='clear'
   alias l='ls -la'
   alias ll='ls -l'
   alias la='ls -A'
   alias lla='ls -la'
   alias lal='ls -la'
   alias lah='ls -lah'
   alias cls='clear'
   alias c='clear'
   alias COPY="tr -d '\n' | xsel -ib"
   alias LOWER="tr '[:upper:]' '[:lower:]'"
   alias UPPER="tr '[:lower:]' '[:upper:]'"
   alias REMOVENEWLINE='tr -d "\n"'
   alias DOTFILES="cd ~/.config/nvim/;nvim; cd -"
   alias I3="cd /home/elitegaming/.config/i3;nvim; cd -"
   alias PICOM="nvim /home/elitegaming/.config/picom.conf"
   alias ZSHRC="nvim ~/.zshrc"
   alias KITTYRC="nvim ~/.config/kitty/kitty.conf"
   alias NSFW="nitrogen --set-scaled --random ~/.config/i3/wallpapers/"
   alias SFW="nitrogen --set-scaled ~/.config/i3/wallpapers/kalilincox.png"
   alias AG1="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl1.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG2="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl2.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG3="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl3.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG4="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl4.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG5="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl5.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG6="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl6.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG7="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl7.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG8="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl8.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG9="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl9.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias ip="ip -c"
end
