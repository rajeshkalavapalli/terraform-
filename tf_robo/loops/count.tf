resource "aws_instance" "roboshop_web" {
  count         = 11
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name[count.index]
  }
}
