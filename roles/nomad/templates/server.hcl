server {

  enabled = true
  bootstrap_expect = 1

  server_join {
      retry_join = ["127.0.0.1:4648"]
  }  


}
consul {
    address = "127.0.0.1:8500"
}