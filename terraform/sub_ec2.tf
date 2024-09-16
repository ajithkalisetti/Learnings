provider "aws" {
  region = var.region
}

resource "aws_instance" "TF-sub-instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_pair_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name     = var.name
    Provison = "Terraform"
  }
}

