variable "AWS_ACCESS_KEY" {default = "AKIASB7GREQP3H73FHWL"}
variable "AWS_SECRET_KEY" {default = "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"}
variable "AWS_REGION" {
    default = "us-east-1"
}

variable "securityGroup"{

    type = list
    default = ["sg-1234","sg-2345","sg-3456"]
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}