### Idp ###


resource "okta_idp_social" "example" {
  type          = var.okta_idp_social_type
  protocol_type = var.okta_idp_social_protocol_type
  name          = var.okta_idp_social_name

  scopes = [
    "public_profile",
    "email",
  ]

  client_id         = "3045521722-57h2sbi2n2d3cfjed50c2hd8r4blik18.apps.googleusercontent.com"
  client_secret     = "hnq6Y4aOu4EjR5_OH5MKEl-R"
}

