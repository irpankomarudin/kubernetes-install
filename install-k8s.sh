#!/bin/bash
dpkg-reconfigure tzdata
apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl nfs-client
apt-mark hold kubelet kubeadm kubectl
swapoff -a
sed -i '/ swap / s/^/#/' /etc/fstab
exit
