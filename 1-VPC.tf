# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "tokyo" {
  cidr_block = "10.40.0.0/16"
  provider = aws.tokyo

  tags = {
    Name = "tokyo"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "tokyo-testb" {
  cidr_block = "10.47.0.0/16"
  provider = aws.tokyo-testb

  tags = {
    Name = "tokyo-testb"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "new-york" {
  cidr_block = "10.41.0.0/16"
  provider = aws.new-york

  tags = {
    Name = "new-york"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "london" {
  cidr_block = "10.42.0.0/16"
  provider = aws.london

  tags = {
    Name = "london"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "sao-paulo" {
  cidr_block = "10.43.0.0/16"
  provider = aws.sao-paulo

  tags = {
    Name = "sao-paulo"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "australia" {
  cidr_block = "10.44.0.0/16"
  provider = aws.australia

  tags = {
    Name = "australia"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "hong-kong" {
  cidr_block = "10.45.0.0/16"
  provider = aws.hong-kong

  tags = {
    Name = "hong-kong"
    Service = "armageddon"
    Owner = "camorri"
  }
}

# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "california" {
  cidr_block = "10.46.0.0/16"
  provider = aws.california

  tags = {
    Name = "california"
    Service = "armageddon"
    Owner = "camorri"
  }
}

