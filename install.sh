#!/usr/bin/env bash

clone() {
	git clone git@github.com:kylie-sre/dispatch.git
}

build_ui() {
	cd ./src/dispatch/static/dispatch || exit
	npm install && npm run build
	cd - || exit
}

install() {
	python3 -m venv .venv
	.venv/bin/pip install -e .
}

clone
cd dispatch || exit
install
