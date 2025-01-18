#! /usr/bin/env bash
# Install all dependencies for developing this project.

asdf plugin add hadolint https://github.com/looztra/asdf-hadolint.git
asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck.git

asdf install