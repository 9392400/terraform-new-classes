variable "ami" {
    type = string
    description = "this is ami"
    default = ""
}
variable "instance_type" {
    type = string
    description = "this is instance type"
    default = ""
}
variable "key_name" {
    type = string
    description ="this is key name"
    default = ""
}
variable "subnet_id" {
    type = string
    description = "this is subnet id"
    default = "subnet-073485a1d2a7276a6"
}