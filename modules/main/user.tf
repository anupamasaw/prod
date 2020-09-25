resource "okta_user" "jp" {
  first_name = var.okta_user_first_name
  last_name  = var.okta_user_last_name
  login      = var.okta_user_login
  email      = var.okta_user_email
  status     = "STAGED"
}


