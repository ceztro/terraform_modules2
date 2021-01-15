data "aws_ami" "my_ami" {
    owners = ["amazon"]
    most_recent = true
    
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-2.0.20201218.1-x86*"]
    }
}