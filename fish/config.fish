function fish_prompt
	set -l last_status $status
    set -l stat
    if test $last_status -ne 0
        set stat (set_color ffa69e)"[$last_status]"(set_color normal)
    end

	string join '' -- (set_color a4d4b4) (prompt_login) (set_color normal) ' ' (set_color ffb7ff) (prompt_pwd --full-length-dirs 2) (set_color c879ff) (fish_vcs_prompt) " " $stat (set_color normal) "> "
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim='nvim'
    alias ff='fzf --bind \'enter:become(nvim {})\''
    alias reload='source ~/.config/fish/config.fish'
end
