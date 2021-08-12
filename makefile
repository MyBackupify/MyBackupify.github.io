SHELL = /usr/bin/env bash

OUT_DIR = docs

docs: docs/index.html docs/login.html docs/config.json

docs/index.html: index.md smb.css smb.js
	mkdir -p $(@D)
	pandoc --self-contained -s -o $@ $< --css $(word 2,$^)

docs/login.html: login.md login.js
	mkdir -p $(@D)
	pandoc --self-contained -s -o $@ $< -M document-css=false

docs/config.json: config.json
	mkdir -p $(@D)
	cp -f $< $@

github_deploy: docs
	find $(OUT_DIR) \( -name '._.DS_Store' -o -name '.DS_Store' \) -delete
	ghp-import --no-jekyll --push --force $(OUT_DIR)
