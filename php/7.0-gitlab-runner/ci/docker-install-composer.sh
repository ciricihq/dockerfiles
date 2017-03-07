#!/bin/bash

# We need to install dependencies only for Docker
[[ ! -e /.dockerinit ]] && exit 0

set -xe

if [ -f composer.json ]; then
    set +x
    if [[ ! -z "$SSH_PRIVATE_KEY" ]]; then
        set -x
        # Install ssh agent and expect
        eval $(ssh-agent -s)

        set +x
        SSH_KEY_FILE=$(tempfile)
        echo -e "$SSH_PRIVATE_KEY" > $SSH_KEY_FILE
        set -x

        expect  <<END_OF_EXPECT
        spawn ssh-add $SSH_KEY_FILE
        expect  {
                        "Enter passphrase" {
                                send "\n"
                                exp_continue
                        }
                        eof {

                        }
                }

END_OF_EXPECT
    mkdir -p ~/.ssh
    [[ -f /.dockerinit ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
    fi;

    set +x
    if [ ! -z "$GITHUB_TOKEN" ]; then
        composer config -g github-oauth.github.com "$GITHUB_TOKEN"
    fi;
    set -x

    composer config -g cache-dir "$(pwd)/composer_cache"
    composer config -g cache-files-ttl 2592000
    composer config -g cache-files-maxsize "100MiB"
    composer install
fi;
