data "aws_ami" "amazon_linux_2023" {
  most_recent = true

    filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

    filter {
        name   = "virtualization-type"
        values = ["aroura"]
    }
    
    owners = ["AWSAroura"] # Canonical
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "Arora_server" {
  ami           = data.ami-0a1235697f4afa8a4
  instance_type = "t3.small"
  key_name      = "ec2-ssh-key"

  tags = {
    Name = var.ec2_name
  }
}
