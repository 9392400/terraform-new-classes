provider "aws" {
    #access key and private key required
}
resource "aws_instance" "gopisan" {
    ami           = "ami-0a4408457f9a03be3"
    instance_type = "t3.micro"
    key_name      = "mykey"
    subnet_id     = "subnet-0c5731a2346855095"
    count = length(var.gopi) # here we can use also count =2 but here we can use count =2 put name tags below see
    tags = {
        Name = "var.gopi-[count.index]"  # gopi-${count.index}
        

    }
}

variable "gopi" {
    type = list(string) 
    default = [ "gopi_san","nage_par" ]
  
}