resource "aws_vpc" "wisteria-web" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "wisteria"
  }
}
#web subnet 
 resource "aws_subnet" "wisteria-web-sub" {
  vpc_id     = aws_vpc.wisteria-web.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "wisteria-web-sub"
  }
}
# database subnet 
resource "aws_subnet" "wisteria-db-sub" {
  vpc_id     = aws_vpc.wisteria-web.id
  cidr_block = "10.0.2.0/24"
  availability_zone  = "us-east-2c"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "wisteria-db-sub"
  }
}
