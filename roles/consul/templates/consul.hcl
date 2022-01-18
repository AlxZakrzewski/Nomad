datacenter = "dc1"
data_dir = "/cs/app/"
encrypt = "OCQZ4twBHhS7+r0zMYExjkx/4iJGlIvCQUdRaNSnbiw="
ca_file = "/etc/consul.d/consul-agent-ca.pem"
cert_file = "/etc/consul.d/dc1-server-consul-0.pem"
key_file = "/etc/consul.d/dc1-server-consul-0-key.pem"
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
bind_addr="0.0.0.0"
advertise_addr="{{ ansible_enp0s3.ipv4.address }}"
retry_join = ["10.0.2.6", "10.0.2.4", "10.0.2.7"]
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