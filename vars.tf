variable "AWS_REGION" {
  default = "us-west-2"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "AMIS" {
  type = "map"
  default = {
    us-west-2 = "ami-06b94666"
  }
}
variable "ENV" {
  default = "DEV"
}
