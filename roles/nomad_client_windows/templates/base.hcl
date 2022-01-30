data_dir = "'%{' {{ nomad_data_winpath }} '}%'"

bind_addr = "0.0.0.0"

log_level = "INFO"
log_file = "'%{' {{ nomad_log_winpath }} '}%'"

addresses {
  http = "0.0.0.0"
}

advertise {
  http = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
  rpc  = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
  serf = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
}