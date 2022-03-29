variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "us-east-1"
}

variable "securityGroup"{

    type = list
    default = ["sg-1234","sg-2345","sg-3456"]
}