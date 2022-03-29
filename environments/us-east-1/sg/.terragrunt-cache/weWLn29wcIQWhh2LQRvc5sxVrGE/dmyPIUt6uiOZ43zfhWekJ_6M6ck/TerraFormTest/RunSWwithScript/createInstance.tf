//this is useful to access the AWS instace via connection (SSH)
resource "aws_key_pair" "levelup_key" {
    key_name = "levelup_key"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "terraformEc2VariableTest1" {
  ami           = "ami-04902260ca3d33422"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.levelup_key.key_name
  tags={
      name="ani"
  }

  security_groups = var.securityGroup

  provisioner "file" {
    source = "installNginx.sh"
    destination = "/tmp/installNginx.sh"
    
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/installNginx.sh",
      "sudo sed -i -e 's/\r$//' /tmp/installNginx.sh ",
      "sudo /tmp/installNginx.sh"
    ]
  }
//private key is with the machin which is executing this script and public key is with the AWS resource called EC2
  connection {
    host = coalesce(self.public_ip, self.private_ip)
    type = "ssh"
    user = var.INSTANCE_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
  }
}