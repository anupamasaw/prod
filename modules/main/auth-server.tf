### Auth Server ###

resource "okta_auth_server" "example" {
  audiences   = var.okta_auth_server_audiences
  description = var.okta_auth_server_description
  name        = var.okta_auth_server_name
  issuer_mode = var.okta_auth_server_issuer_mode
  status      = "ACTIVE"
}

