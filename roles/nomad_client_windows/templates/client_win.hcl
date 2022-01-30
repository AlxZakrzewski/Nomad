data_dir = "{{ nomad_data_winpath }}"

bind_addr = "0.0.0.0"

log_level = "INFO"
log_file = "{{ nomad_log_winpath }}"

client {
    enabled = true
    servers = ["192.168.0.101:4647","192.168.0.102:4647","192.168.0.103:4647"]
    network_interface = "Ethernet 2"
}