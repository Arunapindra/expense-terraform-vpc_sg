module "sg_mysql" {
  source       = "../terrafform-aws-security_group"
  project_name = var.project_name
  environment  = var.environment
  component    = var.component
  vpc_id       = module.vpc.vpc_id
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  tags = merge(
    var.common_tags, var.sg_tags,
    {
      Name = local.final_sg_name
    }
  )
}

