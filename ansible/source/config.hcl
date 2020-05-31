
storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault"
}

listener "tcp" {
  address     = "0.0.0.0:443"
  tls_cert_file = "{{ cert }}"
  tls_key_file = "{{ private_key }}"
  tls_disable = 0
}
api_addr = "{{ vault_url }}"
ui = true

