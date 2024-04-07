.PHONY: test run gp
m ?= "Default commit message"

test:
	@echo "Hello, World"
run:
	@sh update-dot-config.sh
gp:
	git add .
	git commit -am $(m)
	git push