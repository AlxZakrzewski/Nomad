data_dir = "{{ nomad_data_linpath }}"


advertise {
  http = "192.168.0.101"
  rpc  = "192.168.0.101"
  serf = "192.168.0.101"
}

bind_addr = "0.0.0.0"

log_level = "INFO"
log_file = "{{ nomad_log_linpath }}"