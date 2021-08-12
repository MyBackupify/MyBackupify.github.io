all: index.html login.html

index.html: index.md smb.css smb.js
	pandoc --self-contained -s -o $@ $< --css $(word 2,$^)

login.html: login.md login.js
	pandoc --self-contained -s -o $@ $< -M document-css=false
