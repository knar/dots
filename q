[1mdiff --git a/home/.bashrc b/home/.bashrc[m
[1mindex 85b7f98..776e6a4 100644[m
[1m--- a/home/.bashrc[m
[1m+++ b/home/.bashrc[m
[36m@@ -11,8 +11,6 @@[m [mpromptcmd() {[m
 PROMPT_COMMAND=promptcmd[m
 [m
 # Aliases[m
[31m-alias c='clear'[m
[31m-alias cat='bat'[m
 alias ebsp='nvim ~/.config/bspwm/bspwmrc'[m
 alias ehk='nvim ~/.config/sxhkd/sxhkdrc'[m
 alias ls='ls --group-directories-first --color=always'[m
[36m@@ -20,7 +18,5 @@[m [malias la='ls --group-directories-first --color=always -A'[m
 alias p='ping -c 1 google.com'[m
 alias randwall='feh -zr --bg-fill --no-fehbg ~/pics/wallpapers'[m
 alias serv='python3 -m http.server'[m
[31m-alias v='nvim'[m
[31m-alias vi='nvim'[m
 alias vim='nvim'[m
 alias z='fzf | xargs -r nvim'[m
[1mdiff --git a/home/.config/alacritty/alacritty.yml b/home/.config/alacritty/alacritty.yml[m
[1mindex 476f711..4c61aba 100644[m
[1m--- a/home/.config/alacritty/alacritty.yml[m
[1m+++ b/home/.config/alacritty/alacritty.yml[m
[36m@@ -7,8 +7,8 @@[m [mwindow:[m
     lines: 24[m
 [m
   padding:[m
[31m-    x: 16[m
[31m-    y: 16[m
[32m+[m[32m    x: 32[m
[32m+[m[32m    y: 32[m
 [m
   decorations: none[m
 [m
[36m@@ -19,29 +19,31 @@[m [mdraw_bold_text_with_bright_colors: false[m
 scrolling:[m
   history: 10000[m
   multiplier: 3[m
[31m-  multiplier: 3[m
   auto_scroll: true[m
 [m
 font:[m
   normal:[m
[31m-    family: Meslo LG M[m
[32m+[m[32m    family: SF Mono[m
     style: Regular[m
   bold:[m
[31m-    family: Meslo LG M[m
[32m+[m[32m    family: SF Mono[m
     style: Bold[m
   italic:[m
[31m-    family: Meslo LG M[m
[32m+[m[32m    family: SF Mono[m
     style: Italic[m
[32m+[m[32m  bold_italic:[m
[32m+[m[32m    family: SF Mono[m
[32m+[m[32m    style: Bold Italic[m
 [m
[31m-  size: 14.0[m
[32m+[m[32m  size: 15.0[m
 [m
   offset:[m
     x: 0[m
[31m-    y: 0[m
[32m+[m[32m    y: 2[m
 [m
   glyph_offset:[m
     x: 0[m
[31m-    y: 0[m
[32m+[m[32m    y: 1[m
 [m
 colors:[m
   primary:[m
[1mdiff --git a/home/.config/bar/config b/home/.config/bar/config[m
[1mindex 73ce2f8..e74891d 100755[m
[1m--- a/home/.config/bar/config[m
[1m+++ b/home/.config/bar/config[m
[36m@@ -1,5 +1,5 @@[m
 # bar config[m
[31m-[m
[32m+[m[32mbar_fifo=~/.cache/bar_fifo[m
 # include module?[m
 show_wks=1[m
 show_ttl=1[m
[36m@@ -20,7 +20,7 @@[m [mshow_date=1[m
 show_clk_icon=0[m
 [m
 # lemonbar parameters[m
[31m-font="mono:size=14"[m
[32m+[m[32mfont="mono:size=13"[m
 font_offset=-0[m
 [m
 width=1920[m
[1mdiff --git a/home/.config/bar/icons b/home/.config/bar/icons[m
[1mindex 2d16e5f..9e945a7 100755[m
[1m--- a/home/.config/bar/icons[m
[1m+++ b/home/.config/bar/icons[m
[36m@@ -1,7 +1,7 @@[m
 # bar icons[m
 [m
 icon_font="Material Design Icons:size=14"[m
[31m-icon_offset=-3[m
[32m+[m[32micon_offset=-1[m
 [m
 source environment-colors[m
 [m
[1mdiff --git a/home/.config/bspwm/bspwmrc b/home/.config/bspwm/bspwmrc[m
[1mindex 380e23e..030efdb 100755[m
[1m--- a/home/.config/bspwm/bspwmrc[m
[1m+++ b/home/.config/bspwm/bspwmrc[m
[36m@@ -40,3 +40,7 @@[m [mbspc config focused_border_color  "$DARKBLUE"[m
 bspc config normal_border_color "$BACKGROUND"[m
 bspc config active_border_color   "$DARKBLUE"[m
 bspc config presel_feedback_color    "$WHITE"[m
[32m+[m
[32m+[m[32mfor bin in panel; do[m
[32m+[m	[32mpgrep -x "$bin" > /dev/null || "$bin" &[m
[32m+[m[32mdone[m
[1mdiff --git a/home/.config/fontconfig/fonts.conf b/home/.config/fontconfig/fonts.conf[m
[1mindex 400ea68..8db9321 100755[m
[1m--- a/home/.config/fontconfig/fonts.conf[m
[1m+++ b/home/.config/fontconfig/fonts.conf[m
[36m@@ -3,18 +3,18 @@[m
 <fontconfig>[m
 	<alias>[m
 		<family>serif</family>[m
[31m-		<prefer><family>Google Sans</family></prefer>[m
[32m+[m		[32m<prefer><family>SF Pro Text</family></prefer>[m
 	</alias>[m
 	<alias>[m
 		<family>sans-serif</family>[m
[31m-		<prefer><family>Google Sans</family></prefer>[m
[32m+[m		[32m<prefer><family>SF Pro Text</family></prefer>[m
 	</alias>[m
 	<alias>[m
 		<family>sans</family>[m
[31m-		<prefer><family>Google Sans</family></prefer>[m
[32m+[m		[32m<prefer><family>SF Pro Text</family></prefer>[m
 	</alias>[m
 	<alias>[m
 		<family>monospace</family>[m
[31m-		<prefer><family>Meslo LG M</family></prefer>[m
[32m+[m		[32m<prefer><family>SF Mono</family></prefer>[m
 	</alias>[m
 </fontconfig>[m
[1mdiff --git a/home/.config/nvim/init.vim b/home/.config/nvim/init.vim[m
[1mindex f26e5b7..c8d6629 100644[m
[1m--- a/home/.config/nvim/init.vim[m
[1m+++ b/home/.config/nvim/init.vim[m
[36m@@ -18,7 +18,7 @@[m [mset title[m
 set tabstop=4 shiftwidth=4[m
 [m
 " line numbers[m
[31m-set number relativenumber cursorline[m
[32m+[m[32mset number cursorline[m
 [m
 " invis chars for list mode[m
 set showbreak=↪[m
[1mdiff --git a/home/.tmux.conf b/home/.tmux.conf[m
[1mindex 39c5139..c18641f 100644[m
[1m--- a/home/.tmux.conf[m
[1m+++ b/home/.tmux.conf[m
[36m@@ -10,7 +10,7 @@[m [mset -g renumber-windows on[m
 set -g set-titles on[m
 set -g set-titles-string "#T"[m
 set -g set-clipboard on[m
[31m-setw -g mouse on[m
[32m+[m[32mset -g mouse on[m
 [m
 # Bindings[m
 bind R source-file ~/.tmux.conf[m
[1mdiff --git a/home/bin/bar b/home/bin/bar[m
[1mindex 96f6cf3..51981ca 100755[m
[1m--- a/home/bin/bar[m
[1m+++ b/home/bin/bar[m
[36m@@ -21,7 +21,7 @@[m [mmain() {[m
 	for file in ~/bin/lemons/*; do[m
 			source "$file"[m
 	done[m
[31m-	[m
[32m+[m
 	# awwwyea[m
 	start_lemons | format_bar | draw_bar | bash &[m
 [m
[36m@@ -48,14 +48,15 @@[m [mstart_lemons() {[m
 [m
 format_bar() {[m
 	while read -r event; do[m
[32m+[m		[32mmsg="${event#?}"[m
 		case $event in[m
[31m-			W*) wks="${event#?}" ;;[m
[31m-			T*) ttl=" ${event#?} " ;;[m
[31m-			N*) ntw=" ${event#?} " ;;[m
[31m-			V*) vol=" ${event#?} " ;;[m
[31m-			L*) bri=" ${event#?} " ;;[m
[31m-			B*) bat=" ${event#?} " ;;[m
[31m-			C*) clk=" ${event#?} " ;;[m
[32m+[m			[32mW*) wks="$msg" ;;[m
[32m+[m			[32mT*) ttl=" $msg " ;;[m
[32m+[m			[32mN*) ntw=" $msg " ;;[m
[32m+[m			[32mV*) vol=" $msg " ;;[m
[32m+[m			[32mL*) bri=" $msg " ;;[m
[32m+[m			[32mB*) bat=" $msg " ;;[m
[32m+[m			[32mC*) clk=" $msg " ;;[m
 		esac[m
 [m
 		printf "%b\n" "%{l}$wks%{c}$ttl%{r}$ntw$vol$bri$bat$clk"[m
