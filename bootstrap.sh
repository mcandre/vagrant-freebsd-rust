#!/bin/sh
sudo pkg update && \
    sudo pkg install -y curl &&
    su vagrant -c 'curl https://sh.rustup.rs -sSf | sh -s -- -y' &&
    sudo pkg delete -y curl &&
    sudo pkg clean -y &&
    sudo sed -i -e 's/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/local\/sbin \/usr\/local\/bin ~\/bin:\\/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/local\/sbin \/usr\/local\/bin ~\/bin \/usr\/home\/vagrant\/.cargo\/bin:\\/' /etc/login.conf &&
    sudo cap_mkdb /etc/login.conf
