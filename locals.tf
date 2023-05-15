locals {
#   name   = "ex-${basename(path.cwd)}"
  name = "migration-VPC"
  region = "eu-central-1"
  #for route53:
  domain_name = "nisha.aws.crlabs.cloud"
  arecord_name = "resolve-test"
  records_ip = "192.0.2.235"


  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 2)

  tags = {
    Example    = local.name
    GithubRepo = "terraform-migration-vpc"
    GithubOrg  = "terraform-aws-modules"
  }
}