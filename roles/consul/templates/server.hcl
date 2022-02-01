server = true
bootstrap_expect = 3
client_addr = "{% raw %}{{ GetInterfaceIP \"eth1\" }}{% endraw %}"
ui_config {
  enabled = true
}