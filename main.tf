module "vpc" {
  source                  = "github.com/d-devop/tf-module-vpc"
  vpc_cidr_block          = var.vpc_cidr_block
  env                     = var.env
}
