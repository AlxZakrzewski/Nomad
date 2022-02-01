datacenter = "dc1"
data_dir = "{{ consul_data_linpath }}"
#TLS
encrypt = "+8GgNratU7N8+zGbYN7mUrRB5TVCKLV7GgsvPnJJZOc="
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
ca_file = "{{ consul_config_linpath}}/consul-agent-ca.pem"
cert_file = "{{ consul_config_linpath}}/dc1-server-consul-0.pem"
key_file = "{{ consul_config_linpath}}/dc1-server-consul-0-key.pem"
auto_encrypt {
  allow_tls = true
}

bind_addr="0.0.0.0"
advertise_addr="{% raw %}{{ GetInterfaceIP \"eth1\" }}{% endraw %}"
retry_join = ["192.168.1.101", "192.168.1.102", "192.168.1.103"]
connect {
  enabled = true
}
performance {
  raft_multiplier = 1
}
acl {
  enabled = true
  default_policy = "allow"
  enable_token_persistence = true
}
