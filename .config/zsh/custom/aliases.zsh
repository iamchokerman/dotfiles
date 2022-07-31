### File managing aliases

alias down='cd ~/Downloads'
alias doc='cd ~/Documents'
alias ..='cd ..'
alias ../..='cd ../..'
alias ../../..='cd ../../..'
alias ../../../..='cd ../../../..'
alias ../../../../..='cd ../../../../..'
alias cd..="cd .."
alias mv="mv -i"
alias ls='exa'
alias ll='exa -Fal'
alias l='exa --long --grid'
alias lh="exa -a"
alias tree='exa -T'
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias rd='rm -rI "$(exa -D| fzf --height=20% --preview="exa -l {}")"'
alias cx='chmod +x "$(rg --files -g "*.sh"|fzf -1 --height=20% --preview-window=hidden)"'
alias v='nvim'
alias nv='nvim'
alias ni="neovide && osascript -e 'quit app \"'$TERMINAL'\"'"
alias n='nnn -a'
alias vg='nvim $(gum filter)'
alias lv='lvim'
alias f="fzf"
alias ra="ranger"
alias j=z
alias jj="cd -"
alias bi="brew install"
alias bu="brew uninstall"
alias brew_uninstall="brew list|gum choose --no-limit|xargs brew uninstall"

### Suffix aliases
alias -s md=nvim
alias -s mp4=mpv
alias -s mp3=mpv
alias -s mkv=mpv
alias -s jpg=open
alias -s pdf=mupdf-gl

### Media aliases

alias trackma='trackma -a 1'
alias syncplay='/Applications/Syncplay.app/Contents/MacOS/Syncplay'
alias flameshot='/Applications/flameshot.app/Contents/MacOS/flameshot'
alias mpvq="mpv --no-video"
alias watchgoodedits='cd "$(fd . "$HOME/good_edits" --max-depth 1 --type d|fzf --cycle)" && mpv *'

### yt-dlp aliases
# don't forget to download ffmpeg :/

alias ytdl="yt-dlp -f 'bv*+ba' --embed-thumbnail --embed-subs --merge-output-format mp4"
alias ytdl-mp3="yt-dlp --embed-metadata --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail"
alias ytdlist="yt-dlp -f 'bv*[height=1080]+ba'"
alias gedl='yt-dlp -f "bv*+ba" --embed-thumbnail --embed-subs --merge-output-format mp4 -P "$(find ~/good_edits -maxdepth 1 -type d|fzf)" "$(pbpaste)"'
alias fytdl='yt-dlp -f "bv*+ba" --embed-thumbnail --embed-subs --merge-output-format mp4 -P "$(fd . "/Users/justchokingaround" --type d -E Library -E go/|fzf)" "$(pbpaste)"'
alias fytdl-mp3='yt-dlp --embed-metadata --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail -P "$(fd . "/Users/justchokingaround" --type d -E Library -E go/|fzf)" "$(pbpaste)"'
alias fytdlist='yt-dlp -f "bv*[height=1080]+ba" -P "$(fd . "/Users/justchokingaround" --type d -E Library -E go/|fzf)" "$(pbpaste)"'

### Other aliases

# quickly share a file
alias share='printf $(curl -# "https://oshi.at" -F "f=@$(fd -t f -d 1|fzf)"|sed -nE "s_DL: (.*)_\1_p")|pbcopy'
alias fzf-preview='printf "fzf --with-nth 2.. --cycle --preview=\"kitty +kitten icat --clear --transfer-mode file;\
  kitty +kitten icat --place "190x12@10x10" --scale-up --transfer-mode file {1}\""|pbcopy'
alias weather="curl -s wttr.in/Heilbronn"
alias pf='pfetch'
alias nft='neofetch --kitty ~/.config/neofetch/neofetch.jpeg --size 30%'
alias nf='neofetch'
alias py='python3'
alias pip='pip3'
alias u="zsh &&    echo -ne '\e[5 q'"
alias myip="curl ipinfo.io/ip"
alias ytfzf="ytfzf -t --thumb-viewer=kitty"
alias ytm="ytfzf -m"
alias nvf="open_with_nvim nvim"
alias nvff="open_with_nvim_filetype nvim"
alias nif="open_with_nvim neovide && osascript -e 'quit app \"'$TERMINAL'\"'"
alias niff="open_with_nvim_filetype neovide && osascript -e 'quit app \"'$TERMINAL'\"'"
alias mpf="open_with_mpv"
alias nb="newsboat"
alias epy="python3 ~/dev/epy/epy.py"
alias -g L='| less'
alias -g C='| pbcopy'
alias -g S="| sed"
alias -g F="| fzf"
alias -g B="| bat"
alias -g J="| jq"
