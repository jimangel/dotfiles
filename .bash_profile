#!/usr/bin/env bash

# Load .bashrc, which loads: ~/.{aliases,functions,path,extra,exports}
if [[ -r "${HOME}/.bashrc" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bashrc"
fi
