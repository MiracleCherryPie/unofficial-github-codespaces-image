#!/bin/bash
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.296.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.296.1/actions-runner-linux-x64-2.296.1.tar.gz
tar xzf ./actions-runner-linux-x64-2.296.1.tar.gz
./config.sh --url https://github.com/MiracleCherryPie/unofficial-github-codespaces-image --token $GH_ACTIONS_TOKEN
./run.sh
