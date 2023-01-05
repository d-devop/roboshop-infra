env = "dev"

## Default VPC Information
default_vpc_id          = "vpc-0ddef4631bb569f76"
default_vpc_cidr_block  = "172.31.0.0/16"
default_vpc_route_table = "rtb-06b395b4f795af796"
workstation_ip          = "172.31.13.253/32"

## KMS Information
kms_key_id = "arn:aws:kms:us-east-1:136168207246:key/1cebfdbf-b316-40e5-9cae-ab412e6ff733"

## VPC

vpc = {
  dev = {
    vpc_cidr_block            = "10.0.0.0/16"
    public_subnet_cidr_block  = ["10.0.0.0/24", "10.0.1.0/24"]
    app_subnet_cidr_block     = ["10.0.2.0/24", "10.0.3.0/24"]
    db_subnet_cidr_block      = ["10.0.4.0/24", "10.0.5.0/24"]
    subnet_azs                = ["us-east-1a", "us-east-1b"]
  }
}

docdb = {
  dev = {
    engine                  = "docdb"
    backup_retention_period = 1
    preferred_backup_window = "07:00-09:00"
    skip_final_snapshot     = true
    storage_encrypted       = true
    instance_count          = 1
    instance_class          = "db.t3.medium"
  }
}

rds = {
  dev = {
    engine                  = "aurora-mysql"
    engine_version          = "5.7.mysql_aurora.2.11.0"
    dbname                  = "dummy"
    skip_final_snapshot     = true
    backup_retention_period = 1
    preferred_backup_window = "07:00-09:00"
    storage_encrypted       = true
    instance_count          = 1
    instance_class          = "db.t3.small"
  }
}

elasticache = {
  dev = {
    engine          = "redis"
    engine_version  = "6.x"
    num_cache_nodes = 1
    instance_class  = "cache.t3.micro"
  }
}
