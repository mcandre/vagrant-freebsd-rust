#!/bin/sh
sudo pkg update && \
    sudo pkg install -y rust &&
    sudo pkg clean -y &&
    sudo sed -i -e 's/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/local\/sbin \/usr\/local\/bin ~\/bin:\\/:path=\/sbin \/bin \/usr\/sbin \/usr\/bin \/usr\/local\/sbin \/usr\/local\/bin ~\/bin \/home\/vagrant\/.cargo\/bin:\\/' /etc/login.conf &&
    sudo cap_mkdb /etc/login.conf
