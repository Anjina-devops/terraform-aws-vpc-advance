variable "cidr_block" {
  
}

variable "enable_dns_hostnames" {

    default = true
  
}

variable "enable_dns_support" {

    default = true
  
}

variable "common_tags" {

    default = {}
  
}

variable "vpc_tags" {

    default = {}
  
}

variable "project_name" {

  
}

variable "igw_tags" {

    default = {}
  
}

variable "public_subnet_cidr" {

    type = list

    validation {
        
        condition = length(var.public_subnet_cidr) == 2
        error_message = "please enter two public subnet cidr's"

    }
}

variable "private_subnet_cidr" {

    type = list

    validation {
        
        condition = length(var.private_subnet_cidr) == 2
        error_message = "please enter two private subnet cidr's"

    }
}

variable "database_subnet_cidr" {

    type = list

    validation {
        
        condition = length(var.database_subnet_cidr) == 2
        error_message = "please enter two database subnet cidr's"

    }
}

variable "nat_gateway_tags" {

    default = {}
  
}

variable "private_route_table_tags" {

    default = {}
  
}

variable "database_route_table_tags" {

    default = {}
  
}

variable "eip_tags" {

    default = {}
  
}