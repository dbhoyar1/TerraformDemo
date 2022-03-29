
resource "aws_instance" "terraformEc2" {
  count = 3
  ami           = "ami-04902260ca3d33422"
  instance_type = "t2.micro"
  tags={
      name="ani-${count.index}"
  }
}