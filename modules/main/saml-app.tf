### App Saml ###
resource "okta_app_saml" "example" {
  label                    = var.okta_app_saml_label
  sso_url                  = var.okta_app_saml_sso_url
  recipient                = var.okta_app_saml_recipient
  destination              = var.okta_app_saml_destination
  audience                 = var.okta_app_saml_audience
  subject_name_id_template = var.okta_app_saml_subject_name_id_template
  subject_name_id_format   = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
  response_signed          = var.okta_app_saml_response_signed
  signature_algorithm      = var.okta_app_saml_signature_algorithm
  digest_algorithm         = var.okta_app_saml_digest_algorithm
  honor_force_authn        = var.okta_app_saml_honor_force_authn
  authn_context_class_ref  = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"

  attribute_statements {
    type         = "GROUP"
    name         = "groups"
    filter_type  = "REGEX"
    filter_value = ".*"
  }
}

