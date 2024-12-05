# #These are   for  public Tokyo

resource "aws_subnet" "tokyo-a-public" {
  vpc_id                  = aws_vpc.tokyo.id
  cidr_block              = "10.40.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true
  provider = aws.tokyo

  tags = {
    Name    = "tokyo-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "tokyo-d-public" {
  vpc_id                  = aws_vpc.tokyo.id
  cidr_block              = "10.40.4.0/24"
  availability_zone       = "ap-northeast-1d"
  map_public_ip_on_launch = true
  provider = aws.tokyo

  tags = {
    Name    = "tokyo-d-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


# #these are for private Tokyo
resource "aws_subnet" "tokyo-a-private" {
  vpc_id            = aws_vpc.tokyo.id
  cidr_block        = "10.40.11.0/24"
  availability_zone = "ap-northeast-1a"
  provider = aws.tokyo

  tags = {
    Name    = "tokyo-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "tokyo-d-private" {
  vpc_id            = aws_vpc.tokyo.id
  cidr_block        = "10.40.14.0/24"
  availability_zone = "ap-northeast-1d"
  provider = aws.tokyo

  tags = {
    Name    = "tokyo-d-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# #These are   for  public New York

resource "aws_subnet" "new-york-a-public" {
  vpc_id                  = aws_vpc.new-york.id
  cidr_block              = "10.41.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  provider = aws.new-york

  tags = {
    Name    = "new-york-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "new-york-b-public" {
  vpc_id                  = aws_vpc.new-york.id
  cidr_block              = "10.41.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  provider = aws.new-york

  tags = {
    Name    = "new-york-b-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


# #these are for private New York
resource "aws_subnet" "new-york-a-private" {
  vpc_id            = aws_vpc.new-york.id
  cidr_block        = "10.41.11.0/24"
  availability_zone = "us-east-1a"
  provider = aws.new-york

  tags = {
    Name    = "new-york-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "new-york-b-private" {
  vpc_id            = aws_vpc.new-york.id
  cidr_block        = "10.41.12.0/24"
  availability_zone = "us-east-1b"
  provider = aws.new-york

  tags = {
    Name    = "new-york-b-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# #These are   for  public London

resource "aws_subnet" "london-a-public" {
  vpc_id                  = aws_vpc.london.id
  cidr_block              = "10.42.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true
  provider = aws.london

  tags = {
    Name    = "london-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "london-b-public" {
  vpc_id                  = aws_vpc.london.id
  cidr_block              = "10.42.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true
  provider = aws.london  

  tags = {
    Name    = "london-b-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


# #these are for private London
resource "aws_subnet" "london-a-private" {
  vpc_id            = aws_vpc.london.id
  cidr_block        = "10.42.11.0/24"
  availability_zone = "eu-west-2a"
  provider = aws.london

  tags = {
    Name    = "london-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "london-b-private" {
  vpc_id            = aws_vpc.london.id
  cidr_block        = "10.42.12.0/24"
  availability_zone = "eu-west-2b"
  provider = aws.london

  tags = {
    Name    = "london-b-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# #These are   for  public Sao Paulo
resource "aws_subnet" "sao-paulo-a-public" {
  vpc_id                  = aws_vpc.sao-paulo.id
  cidr_block              = "10.43.1.0/24"
  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = true
  provider = aws.sao-paulo

  tags = {
    Name    = "sao-paulo-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "sao-paulo-c-public" {
  vpc_id                  = aws_vpc.sao-paulo.id
  cidr_block              = "10.43.3.0/24"
  availability_zone       = "sa-east-1c"
  map_public_ip_on_launch = true
  provider = aws.sao-paulo

  tags = {
    Name    = "sao-paulo-c-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


# #these are for private Sao Paulo
resource "aws_subnet" "sao-paulo-a-private" {
  vpc_id            = aws_vpc.sao-paulo.id
  cidr_block        = "10.43.11.0/24"
  availability_zone = "sa-east-1a"
  provider = aws.sao-paulo

  tags = {
    Name    = "sao-paulo-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "sao-paulo-c-private" {
  vpc_id            = aws_vpc.sao-paulo.id
  cidr_block        = "10.43.13.0/24"
  availability_zone = "sa-east-1c"
  provider = aws.sao-paulo

  tags = {
    Name    = "sao-paulo-c-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# #These are   for  public Australia

resource "aws_subnet" "australia-a-public" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.44.1.0/24"
  availability_zone       = "ap-southeast-2a"
  map_public_ip_on_launch = true
  provider = aws.australia

  tags = {
    Name    = "australia-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "australia-b-public" {
  vpc_id                  = aws_vpc.australia.id
  cidr_block              = "10.44.2.0/24"
  availability_zone       = "ap-southeast-2b"
  map_public_ip_on_launch = true
  provider = aws.australia

  tags = {
    Name    = "australia-b-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


# #these are for private Australia
resource "aws_subnet" "australia-a-private" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.44.11.0/24"
  availability_zone = "ap-southeast-2a"
  provider = aws.australia  

  tags = {
    Name    = "australia-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "australia-b-private" {
  vpc_id            = aws_vpc.australia.id
  cidr_block        = "10.44.12.0/24"
  availability_zone = "ap-southeast-2b"
  provider = aws.australia

  tags = {
    Name    = "australia-b-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

#These are   for  public Hong Kong

resource "aws_subnet" "hong-kong-a-public" {
  vpc_id                  = aws_vpc.hong-kong.id
  cidr_block              = "10.45.1.0/24"
  availability_zone       = "ap-east-1a"
  map_public_ip_on_launch = true
  provider = aws.hong-kong

  tags = {
    Name    = "hong-kong-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "hong-kong-b-public" {
  vpc_id                  = aws_vpc.hong-kong.id
  cidr_block              = "10.45.2.0/24"
  availability_zone       = "ap-east-1b"
  map_public_ip_on_launch = true
  provider = aws.hong-kong

  tags = {
    Name    = "hong-kong-b-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


#these are for private Hong Kong
resource "aws_subnet" "hong-kong-a-private" {
  vpc_id            = aws_vpc.hong-kong.id
  cidr_block        = "10.45.11.0/24"
  availability_zone = "ap-east-1a"
  provider = aws.hong-kong

  tags = {
    Name    = "hong-kong-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "hong-kong-b-private" {
  vpc_id            = aws_vpc.hong-kong.id
  cidr_block        = "10.45.12.0/24"
  availability_zone = "ap-east-1b"
  provider = aws.hong-kong

  tags = {
    Name    = "hong-kong-b-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

#These are   for  public California

resource "aws_subnet" "california-a-public" {
  vpc_id                  = aws_vpc.california.id
  cidr_block              = "10.46.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true
  provider = aws.california

  tags = {
    Name    = "california-a-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "california-c-public" {
  vpc_id                  = aws_vpc.california.id
  cidr_block              = "10.46.2.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true
  provider = aws.california 

  tags = {
    Name    = "california-c-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


#these are for private California
resource "aws_subnet" "california-a-private" {
  vpc_id            = aws_vpc.california.id
  cidr_block        = "10.46.11.0/24"
  availability_zone = "us-west-1a"
  provider = aws.california

  tags = {
    Name    = "california-a-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

resource "aws_subnet" "california-c-private" {
  vpc_id            = aws_vpc.california.id
  cidr_block        = "10.46.12.0/24"
  availability_zone = "us-west-1c"
  provider = aws.california

  tags = {
    Name    = "california-c-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

#these are for public Tokyo Test B
resource "aws_subnet" "tokyo-testa-public" {
  vpc_id                  = aws_vpc.tokyo-testb.id
  cidr_block              = "10.47.2.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true
  provider = aws.tokyo-testb

  tags = {
    Name    = "tokyo-testa-public"
    Service = "armageddon"
    Owner   = "camorri"
  }
}


#these are for private Tokyo Test B
resource "aws_subnet" "tokyo-testb-private" {
  vpc_id            = aws_vpc.tokyo-testb.id
  cidr_block        = "10.47.12.0/24"
  availability_zone = "ap-northeast-1d"
  provider = aws.tokyo-testb

  tags = {
    Name    = "tokyo-testb-private"
    Service = "armageddon"
    Owner   = "camorri"
  }
}