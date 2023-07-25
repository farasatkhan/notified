#!/bin/bash

sudo apt -y update
sudo apt -y upgrade

# bunch of new packages including gcc, g++ and make.
sudo apt install build-essential
sudo apt install -y libpcap-dev

#---------Install Golang
echo "Golang environment installation in progress ...";
cd /tmp && wget https://go.dev/dl/go1.20.5.linux-amd64.tar.gz && tar xvf go1.20.5.linux-amd64.tar.gz;
mv go /usr/local
export GOROOT=/usr/local/go && export GOPATH=$HOME/go && export PATH=$GOPATH/bin:$GOROOT/bin:$PATH;
echo 'export GOROOT=/usr/local/go' >> ~/.profile && echo 'export GOPATH=$HOME/go' >> ~/.profile && echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile;
source ~/.profile
echo "Golang environment installation is done!";
sleep 1.5

#---------Create a Tools folder in Home
echo "Create a Tools folder";
mkdir /home/programs
cd /home/programs/
echo "Done!";
sleep 1.5


go install github.com/owasp-amass/amass/v3/...@master && ln -s ~/go/bin/amass /usr/local/bin/;

go install github.com/tomnomnom/anew@latest && ln -s ~/go/bin/anew /usr/local/bin/;

go install github.com/projectdiscovery/notify/cmd/notify@latest && ln -s ~/go/bin/notify /usr/local/bin/;