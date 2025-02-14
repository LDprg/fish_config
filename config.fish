source /usr/share/cachyos-fish-config/cachyos-config.fish

set -x DEBUGINFOD_URLS "https://debuginfod.archlinux.org"

export OPENCV_LOG_LEVEL=0
export OPENCV_VIDEOIO_PRIORITY_INTEL_MFX=0

# Zoxide
set --universal zoxide_hook --on-event fish_prompt

fish_add_path -g ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    source /etc/grc.fish
    # alias ls='grc ls -l'
    alias ls='lsd -l'
    alias v='nvim'
    . /home/ld/export-esp.sh
    functions --erase please

    # moonfly theme for the Fish shell
    #
    # Upstream: github.com/bluz71/vim-moonfly-colors

    # Syntax highlighting colors.
    set -g fish_color_autosuggestion 626262
    set -g fish_color_cancel 626262
    set -g fish_color_command 7cb3ff
    set -g fish_color_comment 949494 --italics
    set -g fish_color_cwd 87d787
    set -g fish_color_cwd_root ff5189
    set -g fish_color_end 949494
    set -g fish_color_error ff5454
    set -g fish_color_escape 949494
    set -g fish_color_history_current c6c6c6 --background=323437
    set -g fish_color_host e4e4e4
    set -g fish_color_host_remote e4e4e4
    set -g fish_color_keyword cf87e8
    set -g fish_color_match c6c6c6 --background=323437
    set -g fish_color_normal bdbdbd
    set -g fish_color_operator e65e72
    set -g fish_color_option bdbdbd
    set -g fish_color_param 61d5ae
    set -g fish_color_quote c6c684
    set -g fish_color_redirection 8cc85f
    set -g fish_color_search_match --background=323437
    set -g fish_color_selection --background=323437
    set -g fish_color_status ff5454
    set -g fish_color_user 36c692
    set -g fish_color_valid_path

    # Completion pager colors.
    set -g fish_pager_color_completion c6c6c6
    set -g fish_pager_color_description 949494
    set -g fish_pager_color_prefix 74b2ff
    set -g fish_pager_color_progress 949494
    set -g fish_pager_color_selected_background --background=323437
    set -g fish_pager_color_selected_completion e4e4e4
    set -g fish_pager_color_selected_description e4e4e4
end


# pnpm
set -gx PNPM_HOME "/home/ld/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -g PATH "/home/ld/.bun/bin/" $PATH

set -gx NDK_HOME "$ANDROID_HOME/ndk/28.2.13676358/"
set -gx ANDROID_NDK_HOME "$NDK_HOME"
set -gu ANDROID_SDK_ROOT
