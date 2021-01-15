resource "aws_instance" "instance1" {

    ami = var.ami
    instance_type = var.inst_type

    for_each = var.tags

    tags = {
        name = each.value
    }

    
}