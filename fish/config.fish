#!/usr/bin/fish
set fish_color_search_match --background=
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

alias clk "tty-clock -c"
alias eq "cava"


function fish_prompt
	set_color yellow --bold
	printf "%s" "$USER"
#	set_color green
#	printf "@"
#	set_color blue
#	printf "%s" "$hostname"
	set_color white
	printf " in " 
	set_color red
	echo -n (basename $PWD)
	set_color normal
	#git
	set last_status $status

	set_color normal

	printf '%s ' (__fish_git_prompt)

	set_color normal
end
