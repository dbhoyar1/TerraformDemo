resource "aws_instance" "terraformEc2VariableTest" {
  ami           = "ami-04902260ca3d33422"
  instance_type = "t2.micro"
  tags={
      name="ani"
  }

  security_groups = var.securityGroup
}