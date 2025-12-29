variable "aws_region" {
  default = "ap-south-1"
}

variable "app_vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "db_vpc_cidr" {
  default = "172.32.0.0/16"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "Password123!"
}
