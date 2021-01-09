# Create Azure AD User
resource "azuread_user" "user-maria-gomez" {
  user_principal_name = "mariago@kopicloud.com"
  display_name        = "Maria Gomez"
  mail_nickname       = "mariago"
  password            = "Sup3rS3cr3t@"
}

# Create Azure AD User
resource "azuread_user" "user-juan-perez" {
  user_principal_name = "juanpe@kopicloud.com"
  display_name        = "Juan Perez"
  mail_nickname       = "juanpe"
  password            = "Sup3rS3cr3t@"
}

# Create Azure AD Group
resource "azuread_group" "group-data-analytics-owner" {
  name        = "az-data-analytics-owner"
  description = "Group owner of data analytics resources"
  members = [ 
    azuread_user.user-maria-gomez.object_id,
    azuread_user.user-juan-perez.object_id
  ]
}
