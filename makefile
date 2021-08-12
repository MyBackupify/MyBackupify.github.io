all: docs/index.html docs/login.html

docs/index.html: index.md smb.css smb.js
	pandoc --self-contained -s -o $@ $< --css $(word 2,$^)

docs/login.html: login.md login.js
	pandoc --self-contained -s -o $@ $< -M document-css=false
