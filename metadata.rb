maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures util-linux"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libblkid", ">= 0.0.1"
depends          "libncurses", ">= 0.0.1"
depends          "libselinux", ">= 0.0.1"
depends          "libslang", ">= 0.0.1"
depends          "libtinfo", ">= 0.0.1"
depends          "libuuid", ">= 0.0.1"
depends          "tzdata", ">= 0.0.1"
