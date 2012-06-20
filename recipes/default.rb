include_recipe "libblkid"
include_recipe "libncurses"
include_recipe "libselinux"
include_recipe "libslang"
include_recipe "libuuid"
include_recipe "tzdata"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    util-linux
  /
when "precise"
  include_recipe "libtinfo"

  packages |= %w/
    util-linux
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
