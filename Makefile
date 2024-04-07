.PHONY: test cp gp
m ?= "Default commit message"

test:
	@echo "Hello, World"
cp:
	@sh update-dot-config.sh
gp:
	git add .
	git commit -am $(m)
	git push