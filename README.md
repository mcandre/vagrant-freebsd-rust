# vagrant-freebsd-rust: a Vagrant box for building Rust binaries for FreeBSD

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-freebsd-rust

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "cd /vagrant && rustc hello.rs && ./hello"
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-freebsd-rust.box
```
