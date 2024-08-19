variable "ami" {
    type = string
    default = "ami-0a4408457f9a03be3"
  
}
variable "instance_type" {
    type =string
    default = "t3.micro"

  
}
variable "key_name" {
    type = string
    default = "mykey"
  
}
variable "gopi" {
    type = set(string)
    default = ["gopi" , "sandeep" , "nage"]
  
}
resource "aws_instance" "gopisan" {
    ami           = var.ami
    instance_type = var.instance_type
    key_name      = var.key_name
    subnet_id     = "subnet-0c5731a2346855095"
    for_each      = var.gopi
    tags = {
        Name = each.value
    }
}    