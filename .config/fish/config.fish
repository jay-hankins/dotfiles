source ~/.asdf/asdf.fish

set -gx GOPATH $HOME/go; set -gx GOROOT $HOME/.go; set -gx PATH $GOPATH/bin $PATH; # g-install: do NOT edit, see https://github.com/stefanmaric/g



#test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Added by Krypton
#set -x GPG_TTY (tty)

# Added by jay
#export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)
#gpgconf --launch gpg-agent

