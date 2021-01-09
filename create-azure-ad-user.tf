# Create Azure AD User
resource "azuread_user" "user-maria-gomez" {
  user_principal_name = "mariago@kopicloud.com"
  display_name        = "Maria Gomez"
  mail_nickname       = "mariago"
  password            = "Sup3rS3cr3t@"
}
