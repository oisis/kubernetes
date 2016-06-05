# == Class: kubernetes::master::config
#
# Module to install an up-to-date version of kubernetes-master from package.
#
# === Parameters
#
# [*master_package_ensure*]
#   Passed to the kubernetes-master package.
#   Defaults to present
#
# [*master_package_name*]
#   Setup kubernetes-master package name
#   Default to undef
#
class kubernetes::master::config (
    $master_package_ensure   = 'present',
    $master_package_version  = 'latest',
  ) inherits kubernetes {

  file { '/etc/kubernetes/master/config.conf':
    ensure  => 'file',
    force   => true,
    content => template("${module_name}/etc/kubernetes/master/config.conf.erb"),
  } ->
  class { 'kubernetes::master::apiserver': } ->
  class { 'kubernetes::master::controller_manager': } ->
  class { 'kubernetes::master::scheduler': }
}
