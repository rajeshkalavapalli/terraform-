resource "aws_vpc" "wisteria-web" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "wisteria"
  }
}