variable "ami-id" {
    type = string
    default = "ami-0f3c7d07486cad139"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    
}

variable "tag" {
    type = map 
    default = {
        Name = "hello terraform "
        Project = "Roboshop"
        Enveronment = "DEV"
        Componemt  = "web"
        terraform =  "true"

    }
  
}