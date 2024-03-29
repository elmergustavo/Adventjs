## Makefile directory ##
ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

## Set 'bash' as default shell
SHELL := $(shell which bash)

## Set 'help' target as the default goal
.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help
	@egrep '^[a-zA-Z0-9_\/-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort -d | awk 'BEGIN {FS = ":.*?## "; printf "Usage: make \033[0;34mTARGET\033[0m \033[0;35m[ARGUMENTS]\033[0m\n\n"; printf "Targets:\n"}; {printf "  \033[33m%-25s\033[0m \033[0;32m%s\033[0m\n", $$1, $$2}'

.PHONY: install
install: ## Install dependencies
	@npm install

.PHONY: run
run/all: ## Run and test all challenges sequentially
	@npm run test

CHALLENGES := $(shell seq -f "%02g" 1 25)
CHALLENGE_TARGETS := $(addprefix run/challenge-,$(CHALLENGES))
.PHONY: $(CHALLENGE_TARGETS)
run/challenge-XX: ## Run and test challenge XX
$(CHALLENGE_TARGETS): run/challenge-%:
	@npm run test -- -t "Challenge $*"
