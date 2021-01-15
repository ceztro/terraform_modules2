data "aws_ami" "my_ami" {
    owners = ["amazon"]
    most_recent = true
    
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-2.0.20201218.1-x86*"]
    }
}

variable "users" {
  default     = ["Maciek","Janek","Krzysztof"]
  description = "IAM USERS"
}

variable "type_of_instance" {
  #type        = string
  default     = ["t2-micro","t2-large"]
  description = "type of an instance"
}
