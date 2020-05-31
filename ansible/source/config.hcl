
storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault"
}

listener "tcp" {
  address     = "10.221.132.203:443"
  tls_cert_file = "/etc/vault.d/pki/vault.crt"
  tls_key_file = "/etc/vault.d/pki/vault.key"
  tls_disable = 0
}
api_addr = "https://vault"
ui = true

