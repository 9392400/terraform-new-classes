provider "aws" {
    region = "ap-south-1"
}
provider "aws" {
    region ="us-east-1"
    alias = "america"
    
}
resource "aws_s3_bucket" "gopi" {
    bucket = "multiproviderxe"
}
resource "aws_s3_bucket"  "gopi2" {
    bucket = "multiproviderxegopi"
    provider = aws.america

}

   