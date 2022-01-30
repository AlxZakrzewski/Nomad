data_dir = "{% raw %} %{ {% endraw %} {{ nomad_data_winpath }} {% raw %} }% {% endraw %}"

bind_addr = "0.0.0.0"

log_level = "INFO"
log_file = "{% raw %} %{ {% endraw %} {{ nomad_log_winpath }} {% raw %} }% {% endraw %}"

addresses {
  http = "0.0.0.0"
}

advertise {
  http = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
  rpc  = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
  serf = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
}