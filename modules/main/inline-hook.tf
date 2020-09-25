### Inline Hook ###

resource okta_inline_hook test {
 name    = var.okta_inline_hook_name
 version = var.okta_inline_hook_version
 type    = var.okta_inline_hook_type

 channel = {
   type    = "HTTP"
   version = "1.0.0"
   uri     = "https://example.com/test"
   method  = "POST"
 }

 auth = {
   key   = "Authorization"
   type  = "HEADER"
   value = "123"
 }
}

