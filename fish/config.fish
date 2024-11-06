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
   fish_add_path ~/.local/bin/

   # Options
   set -U fish_greeting
   set -g theme_nerd_fonts yes

   # Binds
   fzf_configure_bindings --variables=\e\cv
   bind \el 'ls -lah ; echo -e "\n" ; commandline -f repaint'





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
   alias I3="cd ~/.config/i3;nvim; cd -"
   alias PICOM="nvim ~/.config/picom.conf"
   alias ZSHRC="nvim ~/.zshrc"
   alias KITTYRC="nvim ~/.config/kitty/kitty.conf"
   alias NSFW="nitrogen --set-scaled --random ~/.config/i3/wallpapers/"
   alias SFW="nitrogen --set-scaled ~/.config/i3/wallpapers/SFW/space.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG1="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl1.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG2="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl2.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG3="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl3.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG4="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl4.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG5="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl5.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG6="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl6.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG7="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl7.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG8="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl8.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG9="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl9.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG10="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl10.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias AG11="nitrogen --set-scaled ~/.config/i3/wallpapers/archgirl11.png && kill $(pgrep -f slideshowwallpaper.sh)"
   alias ip="ip -c"
   alias SLEEPOFF="xset s off -dpms"
   alias SLEEPON="xset s on -dpms"
   alias SUM='tr "\n" "+"| sed "s/.\$//g"| math'


   export EDITOR=/usr/bin/nvim
   export PAGER=cat

end

# for i in (seq 00 99) ; echo $i ; end
# while true ; ls -l ; end
# while read line ; echo $line ; end < file.txt
# cat file.txt | while read line ; echo $line ; end
