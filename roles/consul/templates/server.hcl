server = true
bootstrap_expect = 3
// client_addr = "{% raw %}{{ GetInterfaceIP \"eth1\" }}{% endraw %}"
client_addr = "{% raw %}{{ GetAllInterfaces }}{% endraw %}"

ui_config {
  enabled = true
}