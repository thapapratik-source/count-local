resource "aws_subnet" "subnet" {
    count = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    project = local.project
    Name    = "{local.project}-${count.index}"
  }
}