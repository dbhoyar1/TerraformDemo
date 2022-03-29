#Global variables
variable environment {
    description = "environemnt name"
    type = string
}

#module variables
variable security_grp_desc {
  description = "SG description"
  default = "default SG description"
  type = string
}

variable security_grp_name {
    description = "name of security group"
    type = string
}

variable vpc_id {
    description = "ID of VPC for security group"
    type=string
}

variable security_group_rules {
  description = "map of rules for security group"
  type=map
  default = {}
}