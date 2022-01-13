variable "myvar" {
    default="ci-web-49000-rule"
}

locals {
  ports =["80","443"]
  str ="rafeeq"
  mgr = 80
  result=""
  custom_lb ={
      "rafeeq" = 800,
      afsaan =443
  }
}
variable "exclude" {
    default=["abc","efg","hij"]
}
variable "sids"{
    default="abc"
}
output "portvalue" {
  value = contains(var.exclude,var.sids) ? lookup(local.custom_lb, local.str): "shata"
}

