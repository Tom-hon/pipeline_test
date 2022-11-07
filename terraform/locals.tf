locals {
  instance_name = terraform.workspace
}

locals {
  instances = csvdecode(file("temp.csv"))
}

output "csvout" {
  value = local.instances
}

