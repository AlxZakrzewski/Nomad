server {
  enabled = true
  bootstrap_expect = 3
  server_join {
    retry_join = [ "192.168.1.101", "192.168.1.102", "192.168.1.103" ]
    retry_max = 3
    retry_interval = "15s"
}
}
consul {
    address = "127.0.0.1:8500"
}