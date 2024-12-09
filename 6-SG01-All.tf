# Security Groups for Tokyo VPC
resource "aws_security_group" "tokyo-SG01-ASG01" {
  name        = "tokyo-SG01-ASG01"
  description = "tokyo-SG01-ASG01"
  vpc_id      = aws_vpc.tokyo.id
  provider = aws.tokyo

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "tokyo-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "tokyo-SG02-LB01" {
  name        = "tokyo-SG02-LB01"
  description = "tokyo-SG02-LB01"
  vpc_id      = aws_vpc.tokyo.id
  provider = aws.tokyo

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "tokyo-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for New York VPC
resource "aws_security_group" "new-york-SG01-ASG01" {
  name        = "new-york-SG01-ASG01"
  description = "new-york-SG01-ASG01"
  vpc_id      = aws_vpc.new-york.id
  provider = aws.new-york

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "new-york-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "new-york-SG02-LB01" {
  name        = "new-york-SG02-LB01"
  description = "new-york-SG02-LB01"
  vpc_id      = aws_vpc.new-york.id
  provider = aws.new-york

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "new-york-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for London VPC
resource "aws_security_group" "london-SG01-ASG01" {
  name        = "london-SG01-ASG01"
  description = "london-SG01-ASG01"
  vpc_id      = aws_vpc.london.id
  provider = aws.london

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "london-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "london-SG02-LB01" {
  name        = "london-SG02-LB01"
  description = "london-SG02-LB01"
  vpc_id      = aws_vpc.london.id
  provider = aws.london

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "london-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for Sao Paulo VPC
resource "aws_security_group" "sao-paulo-SG01-ASG01" {
  name        = "sao-paulo-SG01-ASG01"
  description = "sao-paulo-SG01-ASG01"
  vpc_id      = aws_vpc.sao-paulo.id
  provider = aws.sao-paulo

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "sao-paulo-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "sao-paulo-SG02-LB01" {
  name        = "sao-paulo-SG02-LB01"
  description = "sao-paulo-SG02-LB01"
  vpc_id      = aws_vpc.sao-paulo.id
  provider = aws.sao-paulo

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "sao-paulo-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for Australia VPC
resource "aws_security_group" "australia-SG01-ASG01" {
  name        = "australia-SG01-ASG01"
  description = "australia-SG01-ASG01"
  vpc_id      = aws_vpc.australia.id
  provider = aws.australia

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "australia-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "australia-SG02-LB01" {
  name        = "australia-SG02-LB01"
  description = "australia-SG02-LB01"
  vpc_id      = aws_vpc.australia.id
  provider = aws.australia

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "australia-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for Hong Kong VPC
resource "aws_security_group" "hong-kong-SG01-ASG01" {
  name        = "hong-kong-SG01-ASG01"
  description = "hong-kong-SG01-ASG01"
  vpc_id      = aws_vpc.hong-kong.id
  provider = aws.hong-kong

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "hong-kong-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "hong-kong-SG02-LB01" {
  name        = "hong-kong-SG02-LB01"
  description = "hong-kong-SG02-LB01"
  vpc_id      = aws_vpc.hong-kong.id
  provider = aws.hong-kong

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "hong-kong-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for California VPC
resource "aws_security_group" "california-SG01-ASG01" {
  name        = "california-SG01-ASG01"
  description = "california-SG01-ASG01"
  vpc_id      = aws_vpc.california.id
  provider = aws.california

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "california-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "california-SG02-LB01" {
  name        = "california-SG02-LB01"
  description = "california-SG02-LB01"
  vpc_id      = aws_vpc.california.id
  provider = aws.california

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "california-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

# Security Groups for Tokyo Test VPC
resource "aws_security_group" "tokyo-test-SG01-ASG01" {
  name        = "tokyo-test-SG01-ASG01"
  description = "tokyo-test-SG01-ASG01"
  vpc_id      = aws_vpc.tokyo-testb.id
  provider = aws.tokyo-testb
  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "tokyo-test-SG01-ASG01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}

resource "aws_security_group" "tokyo-test-SG02-LB01" {
  name        = "tokyo-test-SG02-LB01"
  description = "tokyo-test-SG02-LB01"
  vpc_id      = aws_vpc.tokyo-testb.id
  provider = aws.tokyo-testb

  ingress {
    description = ""
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "tokyo-test-SG02-LB01"
    Service = "armageddon"
    Owner   = "camorri"
  }

}
