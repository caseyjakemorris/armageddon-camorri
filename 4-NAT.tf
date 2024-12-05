# Create a NAT Gateway for the Tokyo VPC
resource "aws_eip" "tokyo_nat" {
  provider = aws.tokyo
  # vpc = true

  tags = {
    Name = "tokyo_nat"
  }
}

resource "aws_nat_gateway" "tokyo_nat" {
  allocation_id = aws_eip.tokyo_nat.id
  subnet_id     = aws_subnet.tokyo-a-public.id
  provider = aws.tokyo

  tags = {
    Name = "tokyo_nat"
  }

  depends_on = [aws_internet_gateway.tokyo_igw]
}

# Create a NAT Gateway for the New York VPC
resource "aws_eip" "new-york_nat" {
  provider = aws.new-york
  # vpc = true

  tags = {
    Name = "new-york_nat"
  }
}

resource "aws_nat_gateway" "new-york_nat" {
  allocation_id = aws_eip.new-york_nat.id
  subnet_id     = aws_subnet.new-york-a-public.id
  provider = aws.new-york

  tags = {
    Name = "new-york_nat"
  }

  depends_on = [aws_internet_gateway.new-york_igw]
}

# Create a NAT Gateway for the London VPC
resource "aws_eip" "london_nat" {
  provider = aws.london
  # vpc = true

  tags = {
    Name = "london_nat"
  }
}

resource "aws_nat_gateway" "london_nat" {
  allocation_id = aws_eip.london_nat.id
  subnet_id     = aws_subnet.london-a-public.id
  provider = aws.london

  tags = {
    Name = "london_nat"
  }

  depends_on = [aws_internet_gateway.london_igw]
}

# Create a NAT Gateway for the Sao Paulo VPC
resource "aws_eip" "sao-paulo_nat" {
  provider = aws.sao-paulo
  # vpc = true

  tags = {
    Name = "sao-paulo_nat"
  }
}

resource "aws_nat_gateway" "sao-paulo_nat" {
  allocation_id = aws_eip.sao-paulo_nat.id
  subnet_id     = aws_subnet.sao-paulo-a-public.id
  provider = aws.sao-paulo

  tags = {
    Name = "sao-paulo_nat"
  }

  depends_on = [aws_internet_gateway.sao-paulo_igw]
}

# Create a NAT Gateway for the Australia VPC
resource "aws_eip" "australia_nat" {
  provider = aws.australia
  # vpc = true

  tags = {
    Name = "australia_nat"
  }
}

resource "aws_nat_gateway" "australia_nat" {
  allocation_id = aws_eip.australia_nat.id
  subnet_id     = aws_subnet.australia-a-public.id
  provider = aws.australia

  tags = {
    Name = "australia_nat"
  }

  depends_on = [aws_internet_gateway.australia_igw]
}

# Create a NAT Gateway for the Hong Kong VPC
resource "aws_eip" "hong-kong_nat" {
  provider = aws.hong-kong
  # vpc = true

  tags = {
    Name = "hong-kong_nat"
  }
}

resource "aws_nat_gateway" "hong-kong_nat" {
  allocation_id = aws_eip.hong-kong_nat.id
  subnet_id     = aws_subnet.hong-kong-a-public.id
  provider = aws.hong-kong

  tags = {
    Name = "hong-kong_nat"
  }

  depends_on = [aws_internet_gateway.hong-kong_igw]
}

# Create a NAT Gateway for the California VPC
resource "aws_eip" "california_nat" {
  provider = aws.california
  # vpc = true

  tags = {
    Name = "california_nat"
  }
}

resource "aws_nat_gateway" "california_nat" {
  allocation_id = aws_eip.california_nat.id
  subnet_id     = aws_subnet.california-a-public.id
  provider = aws.california

  tags = {
    Name = "california_nat"
  }

  depends_on = [aws_internet_gateway.california_igw]
}

# Create a NAT Gateway for the Tokyo Test VPC
resource "aws_eip" "tokyo-test_nat" {
  provider = aws.tokyo-testb
  # vpc = true

  tags = {
    Name = "tokyo-test_nat"
  }
}

resource "aws_nat_gateway" "tokyo-test_nat" {
  allocation_id = aws_eip.tokyo-test_nat.id
  subnet_id     = aws_subnet.tokyo-testa-public.id
  provider = aws.tokyo-testb

  tags = {
    Name = "tokyo-test_nat"
  }

  depends_on = [aws_internet_gateway.tokyo-test_igw]
}

