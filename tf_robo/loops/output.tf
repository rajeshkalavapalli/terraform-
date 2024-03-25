
output "instance_id" {
  value = aws_instance.roboshop_web[*].ami
}

output "public_ip" {
  value = aws_instance.roboshop_web[*].public_ip 
}


