module "compute_prod" {
    source = "./compute/"

    ami = data.aws_ami.my_ami.id
    inst_type = "t2-micro"
    tags = toset(["instance1","instance2"])
}

module "compute_prod_large" {
    source = "./compute/"

    ami = data.aws_ami.my_ami.id
    inst_type = var.type_of_instance[0]
    tags = toset(["db1","db2"])
}

module "my_users" {
    source = "./iam/"

    name = toset(var.users)
}


module "vpc" {
  source = "github.com/terraform-aws-modules/terraform-aws-vpc"

  name = "my-vpc1"
  cidr = "10.0.128.0/17"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}