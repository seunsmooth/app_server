variable "subnet_id" {
  default = "subnet-0a4db655a5a77ebfb"
}
variable "vpc_id" {
  default = "vpc-0a306a066bdadc5db"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "belgium2"
}
variable "ami_id" {
  default = "ami-0ce71448843cb18a1"
}
variable "region" {
  default = "eu-west-1"
}

variable "managed_by" {
  default     = "terraform"
  description = "terraform"
}

variable "app_name" {
  default = "AppServerBoxSetup"
}

variable "environment" {
  default     = "dev"
  description = "Name of the environment. e.g. prod, qa, dev"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of availability zones to use"
  default     = 2
}
