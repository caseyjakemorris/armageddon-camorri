# Create an Internet Gateway for the Tokyo VPC
resource "aws_internet_gateway" "tokyo_igw" {
  vpc_id = aws_vpc.tokyo.id

  tags = {
    Name    = "Tokyo_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the New York VPC
resource "aws_internet_gateway" "new-york_igw" {
  vpc_id = aws_vpc.new-york.id

  tags = {
    Name    = "NewYork_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the London VPC
resource "aws_internet_gateway" "london_igw" {
  vpc_id = aws_vpc.london.id

  tags = {
    Name    = "London_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the Sao Paulo VPC
resource "aws_internet_gateway" "sao-paulo_igw" {
  vpc_id = aws_vpc.sao-paulo.id

  tags = {
    Name    = "SaoPaulo_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the Australia VPC
resource "aws_internet_gateway" "australia_igw" {
  vpc_id = aws_vpc.australia.id

  tags = {
    Name    = "Australia_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the Hong Kong VPC
resource "aws_internet_gateway" "hong-kong_igw" {
  vpc_id = aws_vpc.hong-kong.id

  tags = {
    Name    = "HongKong_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create an Internet Gateway for the California VPC
resource "aws_internet_gateway" "california_igw" {
  vpc_id = aws_vpc.california.id

  tags = {
    Name    = "California_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}
# Create an Internet Gateway for the Tokyo Test VPC
resource "aws_internet_gateway" "tokyo-test_igw" {
  vpc_id = aws_vpc.tokyo-testb.id

  tags = {
    Name    = "TokyoTest_IG"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

