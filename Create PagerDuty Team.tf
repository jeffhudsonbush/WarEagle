# Configure the PagerDuty provider
provider "pagerduty" {
  token = "ky2CQ_oqQU4UNMR3pxzb"
}

# Create a PagerDuty team
resource "pagerduty_team" "terraform" {
  name        = "Terraform IaC"
  description = "Terraform IaC"
}

# Create a PagerDuty user
resource "pagerduty_user" "bravo" {
  name  = "Bravo SRE"
  email = "jbush+bravo@pagerduty.com"
  teams = ["${pagerduty_team.terraform.id}"]
}