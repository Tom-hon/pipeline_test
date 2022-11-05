variable "test_storage" {
  type    = string
  default = "amazingteset"
}

variable "location" {
  type    = string
  default = "UK south"
}

variable "tags" {
  type    = string
  default = "something"
}

variable "the_test" {
  type    = string
  default = "setmeplease"
}

output "the_test" {
  value = var.the_test
}
