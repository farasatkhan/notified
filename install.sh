#!/bin/bash

go install github.com/owasp-amass/amass/v3/...@master && ln -s ~/go/bin/amass /usr/local/bin/;

go install github.com/tomnomnom/anew@latest && ln -s ~/go/bin/anew /usr/local/bin/;

go install github.com/projectdiscovery/notify/cmd/notify@latest && ln -s ~/go/bin/notify /usr/local/bin/;