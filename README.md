# vagrant-ubuntu-mongodb


This repo contains the necessary files to spin up a Ubuntu 14.04 LTS VM with MongoDB.

This is useful for example during the development of apps that may require a DB for testing. It avoids having to install one locally, which may not always be straightforward or desirable.


## Usage

Assumming you have [Vagrant](https://www.vagrantup.com/) installed, you just need to clone this repo and run:

`vagrant up --provision`

After the VM has finished booting and provisioning, you can access MongoDB on `192.168.33.10:27017`.


## What does this really do?

* Boots up an Ubuntu 14.04 LTS VM from an Ubuntu official image.
* Installs the [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest) plugin, which upgrades the VirtualBox Guest Extensions to the latest version. This ensures compatibility with mounted drives.
* Installs puppet using the shell provisioner.
* Installs mongodb using the puppet provisioner.
* Modifies `/etc/mongodb.conf` so MongoDB listens to 0.0.0.0 instead of 127.0.0.1. This makes mongo accessible from outside the VM.

