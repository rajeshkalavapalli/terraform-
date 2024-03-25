resource "aws_instance" "roboshop_web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"


  tags = {
    Name = "HelloTerraform"
  }
}

resource "aws_security_group" "roboshop-all" {

  name        = var.sg-name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id


  
  ingress {
    description      = "allow all ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
}

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]

  }
    tags = {
        Name = "roboshop-sq"
    }

}

