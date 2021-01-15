variable "ami" {
  type        = string
  description = "AMI for an instance"
}


variable "inst_type" {
  type        = string
  description = "Instance's type"
}

variable "tags" {
  #type        = map
  description = "Name of the instance"
}

