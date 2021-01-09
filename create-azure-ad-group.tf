# Create Azure AD Group
resource "azuread_group" "group-data-analytics-owner" {
  name        = "az-data-analytics-owner"
  description = "Group owner of data analytics resources"
}
