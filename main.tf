resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"


    tags = {
      project = local.project
    Name = local.project
    }
  
}