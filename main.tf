module "compute_prod" {
    source = "./compute/"

    ami = data.aws_ami.my_ami.id
    inst_type = "t2-micro"
    tags = toset(["instance1","instance2","instance3"])
}