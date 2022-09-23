variable "region" {
  description = "AWS region to create resources in"
  type  = string
  default = "ap-southeast-2"
}


variable "repository_list" {
  description = "List of repo names"
  type = list
  default = ["backend", "worker"]
  
}