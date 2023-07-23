setup:
	# Create python virtualenv & source it
	apt install npm
	npm audit fix --force --audit-level=critical

install:
	# Install JSlint
	npm install jslint -g

	# Install hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
	chmod +x /bin/hadolint

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile

	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	jslint src/index.js

all: setup install lint
