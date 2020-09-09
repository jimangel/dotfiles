SHELL := bash

.PHONY: all
all: bin dotfiles ## Installs the bin and etc directory files and the dotfiles.


.PHONY: dotfiles
dotfiles: ## Installs the dotfiles.
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gimme-go" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $$HOME/$$f; \
	done; \
        ln -snf $(CURDIR)/.bash_profile $$HOME/.profile;

.PHONY: bin
bin: ## Installs the bin directory files.
	# add aliases for things in bin
	for file in $(shell find $(CURDIR)/bin -type f -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file /usr/local/bin/$$f; \
	done;

.PHONY: vscode
vscode: ## Installs vscode and settings
	$(CURDIR)/vscode/setup-vscode.sh \
	ln -sf $(CURDIR)/vscode/settings.json $$HOME/.config/Code/User/settings.json

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
