#!/usr/bin/env bash
set -e

if ! hash code 2>/dev/null; then
	echo "install vscode with:"
	echo "sudo updateorinstall update_vscode"
	exit 1
fi

code --install-extension golang.go


#go get github.com/mdempsky/gocode
#go get github.com/uudashr/gopkgs/v2/cmd/gopkgs
#go get github.com/ramya-rao-a/go-outline
#go get github.com/acroca/go-symbols
#go get golang.org/x/tools/cmd/guru
#go get golang.org/x/tools/cmd/gorename
#go get github.com/cweill/gotests/...
#go get github.com/fatih/gomodifytags
#go get github.com/josharian/impl
#go get github.com/davidrjenni/reftools/cmd/fillstruct
#go get github.com/haya14busa/goplay/cmd/goplay
#go get github.com/godoctor/godoctor
#go get github.com/go-delve/delve/cmd/dlv
#go get github.com/stamblerre/gocode
#go get github.com/rogpeppe/godef
#go get github.com/sqs/goreturns
#go get golang.org/x/lint/golint

# move to go get...
#Installing github.com/mdempsky/gocode SUCCEEDED
#Installing github.com/uudashr/gopkgs/v2/cmd/gopkgs SUCCEEDED
#Installing github.com/ramya-rao-a/go-outline SUCCEEDED
#Installing github.com/acroca/go-symbols SUCCEEDED
#Installing golang.org/x/tools/cmd/guru SUCCEEDED
#Installing golang.org/x/tools/cmd/gorename SUCCEEDED
#Installing github.com/cweill/gotests/... SUCCEEDED
#Installing github.com/fatih/gomodifytags SUCCEEDED
#Installing github.com/josharian/impl SUCCEEDED
#Installing github.com/davidrjenni/reftools/cmd/fillstruct SUCCEEDED
#Installing github.com/haya14busa/goplay/cmd/goplay SUCCEEDED
#Installing github.com/godoctor/godoctor SUCCEEDED
#Installing github.com/go-delve/delve/cmd/dlv SUCCEEDED
#Installing github.com/stamblerre/gocode SUCCEEDED
#Installing github.com/rogpeppe/godef SUCCEEDED
#Installing github.com/sqs/goreturns SUCCEEDED
#Installing golang.org/x/lint/golint SUCCEEDED


# move to make file???
#ln -sf $HOME/.dotfiles/vscode/settings.json $HOME/.config/Code/User/settings.json
#ln -sf $HOME/.dotfiles/vscode/keybindings.json $HOME/.config/Code/User/keybindings.json

