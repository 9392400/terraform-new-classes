 resource "aws_instance" "my-examples" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    }

    
