provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "t3_small" {
  ami           = var.ami_id
  instance_type = "t3.small"
  key_name      = var.key_name

  tags = {
    Name = "TerraformT3Instance"
  }
}

