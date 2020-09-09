#!/usr/bin/env bash
set -e

if ! hash code 2>/dev/null; then
	curl -sSL "https://update.code.visualstudio.com/latest/linux-deb-x64/stable" -o vscode.deb
        sudo apt install libx11-xcb1
	sudo apt install ./vscode.deb -y
	rm -rf vscode.deb
fi

# install extensions
code --install-extension golang.go
code --install-extension hashicorp.terraform

# install golang tools
go get github.com/mdempsky/gocode
go get github.com/uudashr/gopkgs/v2/cmd/gopkgs
go get github.com/ramya-rao-a/go-outline
go get github.com/acroca/go-symbols
go get golang.org/x/tools/cmd/guru
go get golang.org/x/tools/cmd/gorename
go get github.com/cweill/gotests/...
go get github.com/fatih/gomodifytags
go get github.com/josharian/impl
go get github.com/davidrjenni/reftools/cmd/fillstruct
go get github.com/haya14busa/goplay/cmd/goplay
go get github.com/godoctor/godoctor
go get github.com/go-delve/delve/cmd/dlv
go get github.com/stamblerre/gocode
go get github.com/rogpeppe/godef
go get github.com/sqs/goreturns
go get golang.org/x/lint/golint

# settings.json is symlinked in Makefile
