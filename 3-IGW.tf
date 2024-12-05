# Create an Internet Gateway for the Tokyo VPC
resource "aws_internet_gateway" "tokyo_igw" {
  vpc_id = aws_vpc.tokyo.id
  provider = aws.tokyo

  tags = {
    Name    = "Tokyo_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the New York VPC
resource "aws_internet_gateway" "new-york_igw" {
  vpc_id = aws_vpc.new-york.id
  provider = aws.new-york

  tags = {
    Name    = "NewYork_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the London VPC
resource "aws_internet_gateway" "london_igw" {
  vpc_id = aws_vpc.london.id
  provider = aws.london

  tags = {
    Name    = "London_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the Sao Paulo VPC
resource "aws_internet_gateway" "sao-paulo_igw" {
  vpc_id = aws_vpc.sao-paulo.id
  provider = aws.sao-paulo

  tags = {
    Name    = "SaoPaulo_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the Australia VPC
resource "aws_internet_gateway" "australia_igw" {
  vpc_id = aws_vpc.australia.id
  provider = aws.australia

  tags = {
    Name    = "Australia_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the Hong Kong VPC
resource "aws_internet_gateway" "hong-kong_igw" {
  vpc_id = aws_vpc.hong-kong.id
  provider = aws.hong-kong

  tags = {
    Name    = "HongKong_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the California VPC
resource "aws_internet_gateway" "california_igw" {
  vpc_id = aws_vpc.california.id
  provider = aws.california

  tags = {
    Name    = "California_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}
# Create an Internet Gateway for the Tokyo Test VPC
resource "aws_internet_gateway" "tokyo-test_igw" {
  vpc_id = aws_vpc.tokyo-testb.id
  provider = aws.tokyo-testb

  tags = {
    Name    = "TokyoTest_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

