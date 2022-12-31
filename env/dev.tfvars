env = "dev"

## Default VPC Information
default_vpc_id          = "vpc-0ddef4631bb569f76"
default_vpc_cidr_block  = "172.31.0.0/16"
default_vpc_route_table = "rtb-06b395b4f795af796"

## VPC
vpc = {
  dev = {
    vpc_cidr_block            = "10.0.0.0/16"
    public_subnet_cidr_block  = ["10.0.0.0/24", "10.0.1.0/24"]
    private_subnet_cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
    subnet_azs                = ["us-east-1a", "us-east-1b"]
  }
}
