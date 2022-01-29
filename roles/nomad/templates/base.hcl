data_dir = "{{ nomad_data_linpath }}"

bind_addr = "0.0.0.0"

log_level = "INFO"
log_file = "{{ nomad_log_linpath }}"

addresses {
  http = "0.0.0.0"
}

advertise {
  http = "{{ GetInterfaceIP \"eth1\" }}"
}