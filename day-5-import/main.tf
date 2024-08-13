provider "aws" {

}


resource "aws_instance" "mty_import" { #first we can see only resource block that means run this commands first terraform import
    ami           = "ami-0a4408457f9a03be3"
    instance_type = "t2.micro"
    key_name      = "mykey"

    tags = {
        Name = "gopi sandeep"
    }



}

  
    



 






