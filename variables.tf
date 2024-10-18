variable "common_tags" {
  default = {
    project     = "expense"
    terraform   = true
    Environment = "dev"
  }
}

variable "environment" {
  type    = string
  default = "dev"
}
variable "project_name" {
  default = "expense"
}
variable "component" {
  default = "mysql"
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "private_subnet_cidrs" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}
variable "database_subnet_cidrs" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "sg_tags" {
  default = {
    sg_component = "mysql"
  }
}