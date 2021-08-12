index.html: index.md smb.css smb.js
	pandoc -s -o $@ $< --css $(word 2,$^) --self-contained
