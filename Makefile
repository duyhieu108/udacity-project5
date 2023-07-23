check_env:
	# Check npm version
	npm -version

install:
	# Install JSlint
	sudo npm install jslint -g

	# Install hadolint
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
	sudo chmod +x /bin/hadolint

lint:
	# See local hadolint install instructions: https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile

	# This is a linter for JS source code linter: https://www.jslint.com/
	# This should be run with JS file code
	jslint src/index.js

all: check_env install lint
