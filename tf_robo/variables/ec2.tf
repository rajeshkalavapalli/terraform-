resource "aws_instance" "roboshop_web" {
  ami           = var.ami-id
  instance_type = var.instance_type


  tags = var.tag
}

