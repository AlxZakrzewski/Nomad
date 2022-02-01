server = false
datacenter = "dc1"
data_dir = "{% raw %}c:\\consul{% endraw %}"
ui = true
log_level = INFO
enable_syslog = true
log_file = "{% raw %}c:\\Users\\{% endraw %}{{ ansible_user }}{% raw %}\\consul_{% endraw %}{{ consul_version }}{% raw %}\\app\\log{% endraw %}"
retry_join = ["192.168.1.101", "192.168.1.102", "192.168.1.103"]