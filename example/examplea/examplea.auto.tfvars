
conditions = {
  resource_types = ["aws_instance"]
  cond_type      = "attribute"
  attribute      = "instance_type"
  operator       = "equals"
  value          = "t3.micro"
}
guidelines = <<GUIDELINE
This is an example policy to show a use in line one deployed
it can be used immediately in connected mode
GUIDELINE

cloud_provider = "aws"
title          = "Ensure Developers use the AWS free tier"
severity       = "critical"
category       = "general_security"
