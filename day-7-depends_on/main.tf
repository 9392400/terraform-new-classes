provider "aws" {

}

resource "aws_instance" "par" {
    ami = "ami-0a4408457f9a03be3"
    instance_type = "t3.micro"
    key_name = "mykey"
    subnet_id = "subnet-0c5731a2346855095"
}

resource "aws_s3_bucket" "default" {
    bucket = "vcxvghjhgfc"
    depends_on = [ aws_instance.par]

}