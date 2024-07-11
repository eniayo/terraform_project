resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_subnet" "public_subnet" {
  count                   = 3
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = var.public_ip_on_launch
  tags = {
    Name = var.public_subnet_name
  }
}


resource "aws_subnet" "private_subnet" {
  count      = 3
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_subnet" "database" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.database_subnet_cidr
  tags = {
    Name = var.database_subnet_name
  }

}
resource "aws_route_table_association" "pub_rt" {
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "pri_rt" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.public_rt_name
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = var.private_rt_name
  }
}
resource "aws_route_table" "database" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "database-route-database"
  }
}

resource "aws_route_table_association" "database" {
  subnet_id      = element(aws_subnet.database.*.id, count.index)
  route_table_id = aws_route_table.database.id
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = var.ngw_name
  }

  depends_on = [aws_internet_gateway.gw]
}



resource "aws_db_subnet_group" "db_sb_gp" {
  name       = var.database_subnet_group
  subnet_ids = aws_subnet.database.id
  tags = {
    Name = var.database_subnet_group
  }
}

