### Group Block ###
resource "okta_group" "sso" {
 name        = var.okta_group_name
 description = var.okta_group_description
}

