data_dir = "{% raw %}c:\\data\\nomad{% endraw %}"

bind_addr = "0.0.0.0"

log_level = "INFO"
log_file = "{{ c:\\Users\\{{ ansible_user }}\\nomad_{{ nomad_version }}\\app\\log | safe }}"
// log_file = "{% raw %}c:\\Users\\{% endraw %}{{ ansible_user }}{% raw %}\\nomad_{% endraw %}{{ nomad_version }}{% raw %}\\app\\log{% endraw %}"

addresses {
  http = "0.0.0.0"
}

advertise {
  http = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
  rpc  = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
  serf = "{% raw %}{{ GetInterfaceIP \"Ethernet 2\" }}{% endraw %}"
}