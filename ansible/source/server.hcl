server = true
bootstrap_expect = 1
retry_join = ["127.0.0.1"]
datacenter = "vault"
data_dir = "/opt/consul"
bind_addr = "127.0.0.1"
encrypt = "{{ consul_key.stdout_lines | first }}"

acl = {
        enabled = true
        default_policy = "allow"
        down_policy = "extend-cache"
}

