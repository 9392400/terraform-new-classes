provider "aws" {

}

#resource "aws_instance" "san" {
    #ami = "ami-0a4408457f9a03be3"
    #key_name = "abc"
    #instance_type = "t3.micro"
    #subnet_id = "subnet-0c5731a2346855095"
    #tags = {
        #Name = "gopisanparsan"
    #}

resource "aws_instance" "san" {
    ami = "ami-0a4408457f9a03be3"
    key_name = "abc"
    instance_type = "t3.micro"
    subnet_id = "subnet-0c5731a2346855095"
    tags = {
        Name = "sandgopipar"
    }
    
    #lifecycle {
      #create_before_destroy = true 
    #}
    #lifecycle {
      #prevent_destroy = true
    #}
    lifecycle {
      ignore_changes = [ tags ]
    }
}