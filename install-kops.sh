#!/bin/bash
#wget https://github.com/kubernetes/kops/releases/download/1.8.1/kops-linux-amd64
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
#mv ./kops-linux-amd64 ./kops
chmod +x ./kops
mv ./kops /usr/bin

