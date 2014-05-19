class networkmanager(
  $version = present,
  $enable  = true,
  $start   = true,
  $gui     = false,

  $openconnect_connections = {},
  $openvpn_connections     = {},
  $wifi_connections        = {},
) {
  class { 'networkmanager::install': } ->
  class { 'networkmanager::service': } ->
  Class['networkmanager']

  class { 'networkmanager::config': } ->
  Class['networkmanager']
}
