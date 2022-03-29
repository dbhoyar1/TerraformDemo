resource "aws_security_group" "this" {
  name        = var.security_grp_name
  description = var.security_grp_desc
  vpc_id      = var.vpc_id

    lifecycle {
      create_before_destroy = true
    }

  tags = {
    Name = var.security_grp_name,
    Environment = var.environment
  }
}