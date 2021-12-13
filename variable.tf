variable "usernames" {
  type    = list(string)
  default = ["a", "b", "c"]
}

variable "ami_to_select" {
  type       = map(string)
  descripton = " input the region and ami code"
  default = {
    "t2.micro" = "ami-0a1eddae0b7f0a79f" # first one
    "t2.nano" = "ami-07d02ee1eeb0c996c" # Debian
  }
}

variable "instance_type" {
  type    = string
  #default = "t2.micro"

}
