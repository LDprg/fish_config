if status is-interactive
    # Commands to run in interactive sessions can go here
    source /etc/grc.fish
    # alias ls='grc ls -l'
    alias ls='lsd'
end

set -x DEBUGINFOD_URLS "https://debuginfod.archlinux.org"

export OPENCV_LOG_LEVEL=0
export OPENCV_VIDEOIO_PRIORITY_INTEL_MFX=0
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# Ocaml
test -r '/home/ld/.opam/opam-init/init.fish' && source '/home/ld/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true

# Zoxide
set --universal zoxide_hook --on-event fish_prompt

# pnpm
set -gx PNPM_HOME "/home/ld/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
