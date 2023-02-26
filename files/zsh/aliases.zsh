# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# Use $XINITRC variable if file exists.
[ -f "$XINITRC" ] && alias startx="startx $XINITRC"

# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	mkd="mkdir -pv" \
	yt="youtube-dl --add-metadata -i" \
	yta="yt -x -f bestaudio/best" \
	ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	g="git" \
	trem="transmission-remote" \
	YT="youtube-viewer" \
	sdn="sudo shutdown -h now" \
	e="$EDITOR" \
	v="$EDITOR" \
	p="sudo pacman" \
	xi="sudo xbps-install" \
	xr="sudo xbps-remove -R" \
	xq="xbps-query" \
	z="zathura" \

alias \
    youtube-dl-mp3="youtube-dl --extract-audio --audio-format mp3"\
    youtube-dl-playlist="youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'"\
    mpv="mpv --hwdec"\
    odysee-encode="ffmpeg -i input.avi -c:v libx264 -crf 21 -preset faster -pix_fmt yuv420p -maxrate 5000K -bufsize 5000K -vf 'scale=if(gte(iw\,ih)\,min(1920\,iw)\,-2):if(lt(iw\,ih)\,min(1920\,ih)\,-2)' -movflags +faststart -c:a aac -b:a 160k output.mp4" \
    textidote="java -jar /home/kzeran/Projects/textidote.jar" \
    tg="terragrunt" \
    ccc="xclip -sel clip"\
    icat="kitty +kitten icat"\
    sshkitty="kitty +kitten ssh"\
    wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'\
    gfn='google-chrome --disable-gpu-driver-bug-workarounds --use-gl=desktop --ignore-gpu-blocklist --enable-gpu-rasterization --enable-zero-copy --enable-features=VaapiVideoDecoder,Vulkan'

