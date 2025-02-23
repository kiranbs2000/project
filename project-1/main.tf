provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "instance" {
  ami = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  security_groups = ["linux-sg"]
  key_name = "my-ec2-keypair"
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
    delete_on_termination = "true"
  }
  tags = {
    Name = "terrsform-server"
  }
}