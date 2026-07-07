module "network" {
  source = "../../modules/network"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  private_subnet_cidrs = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]

  availability_zones = [
    "ap-south-1b",
    "ap-south-1c"
  ]
}

module "ecs" {
  source = "../../modules/ecs"

  vpc_id             = module.network.vpc_id
  public_subnet_ids  = module.network.public_subnet_ids
  private_subnet_ids = module.network.private_subnet_ids

  cpu             = 256
  memory          = 512
  container_image = "nginx:latest"

  aws_region = var.aws_region
}

module "rds" {
  source = "../../modules/rds"

  vpc_id                = module.network.vpc_id
  private_subnet_ids    = module.network.private_subnet_ids
  ecs_security_group_id = module.ecs.ecs_security_group_id

  db_instance_class       = "db.t3.micro"
  backup_retention_period = 3
  deletion_protection     = false

  db_name  = "appdb"
  username = "postgres"
  password = "ChangeMe123!"
}
