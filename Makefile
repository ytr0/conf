.PHONY: test update gp
m ?= "Default commit message"

test:
	@echo "Hello, World"
update:
	@sh update-dot-config.sh
gp:
	git add .
	git commit -am $(m)
	git push