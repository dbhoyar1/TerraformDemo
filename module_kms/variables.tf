variable "description" {
  description = "aws alias description"
  type = string
  default = "default description on Alias"
}

variable "deletion_window_in_days" {
    type = number
    default = 15
  description = "deletion period of key in days"
}

variable "alias" {
    type = string
    description = "KMS AWS key alias"
  
}