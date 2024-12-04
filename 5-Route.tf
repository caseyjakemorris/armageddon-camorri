# Create Route Table and Route Table Association for Tokyo
resource "aws_route_table" "tokyo-private" {
  vpc_id = aws_vpc.tokyo.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.tokyo_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = "" 
    },
  ]

  tags = {
    Name = "tokyo-private"
  }
}

resource "aws_route_table" "tokyo-public" {
  vpc_id = aws_vpc.tokyo.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyo_igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "tokyo-public"
  }
}

#private

resource "aws_route_table_association" "tokyo-private-a" {
  subnet_id      = aws_subnet.tokyo-a-private.id
  route_table_id = aws_route_table.tokyo-private.id
}

resource "aws_route_table_association" "tokyo-private-d" {
  subnet_id      = aws_subnet.tokyo-d-private.id
  route_table_id = aws_route_table.tokyo-private.id
}


#public

resource "aws_route_table_association" "tokyo-public-a" {
  subnet_id      = aws_subnet.tokyo-a-public.id
  route_table_id = aws_route_table.tokyo-public.id
}

resource "aws_route_table_association" "tokyo-public-d" {
  subnet_id      = aws_subnet.tokyo-d-public.id
  route_table_id = aws_route_table.tokyo-public.id
}

# Create Route Table and Route Table Association for New York
resource "aws_route_table" "new-york-private" {
  vpc_id = aws_vpc.new-york.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.new-york_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "new-york-private"
  }
}

resource "aws_route_table" "new-york-public" {
  vpc_id = aws_vpc.new-york.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.new-york_igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "new-york-public"
  }
}

#private

resource "aws_route_table_association" "new-york-private-a" {
  subnet_id      = aws_subnet.new-york-a-private.id
  route_table_id = aws_route_table.new-york-private.id
}

resource "aws_route_table_association" "new-york-private-b" {
  subnet_id      = aws_subnet.new-york-b-private.id
  route_table_id = aws_route_table.new-york-private.id
}


#public

resource "aws_route_table_association" "new-york-public-a" {
  subnet_id      = aws_subnet.new-york-a-public.id
  route_table_id = aws_route_table.new-york-public.id
}

resource "aws_route_table_association" "new-york-public-b" {
  subnet_id      = aws_subnet.new-york-b-public.id
  route_table_id = aws_route_table.new-york-public.id
}

# Create Route Table and Route Table Association for London
resource "aws_route_table" "london-private" {
  vpc_id = aws_vpc.london.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.london_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "london-private"
  }
}

resource "aws_route_table" "london-public" {
  vpc_id = aws_vpc.london.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.london_igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "london-public"
  }
}

#private

resource "aws_route_table_association" "london-private-a" {
  subnet_id      = aws_subnet.london-a-private.id
  route_table_id = aws_route_table.london-private.id
}

resource "aws_route_table_association" "london-private-b" {
  subnet_id      = aws_subnet.london-b-private.id
  route_table_id = aws_route_table.london-private.id
}


#public

resource "aws_route_table_association" "london-public-a" {
  subnet_id      = aws_subnet.london-a-public.id
  route_table_id = aws_route_table.london-public.id
}

resource "aws_route_table_association" "london-public-b" {
  subnet_id      = aws_subnet.london-b-public.id 
  route_table_id = aws_route_table.london-public.id
}

# Create Route Table and Route Table Association for Sao-Paulo
resource "aws_route_table" "sao-paulo-private" {
  vpc_id = aws_vpc.sao-paulo.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.sao-paulo_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "sao-paulo-private"
  }
}

resource "aws_route_table" "sao-paulo-public" {
  vpc_id = aws_vpc.sao-paulo.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.sao-paulo_igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "sao-paulo-public"
  }
}

#private

resource "aws_route_table_association" "sao-paulo-private-a" {
  subnet_id      = aws_subnet.sao-paulo-a-private.id
  route_table_id = aws_route_table.sao-paulo-private.id
}

resource "aws_route_table_association" "sao-paulo-private-c" {
  subnet_id      = aws_subnet.sao-paulo-c-private.id
  route_table_id = aws_route_table.sao-paulo-private.id
}


#public

resource "aws_route_table_association" "sao-paulo-public-a" {
  subnet_id      = aws_subnet.sao-paulo-a-public.id
  route_table_id = aws_route_table.sao-paulo-public.id
}

resource "aws_route_table_association" "sao-paulo-public-c" {
  subnet_id      = aws_subnet.sao-paulo-c-public.id
  route_table_id = aws_route_table.sao-paulo-public.id
}

# Create Route Table and Route Table Association for Australia
resource "aws_route_table" "australia-private" {
  vpc_id = aws_vpc.australia.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.australia_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "australia-private"
  }
}

resource "aws_route_table" "australia-public" {
  vpc_id = aws_vpc.australia.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.australia_igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "australia-public"
  }
}

#private

resource "aws_route_table_association" "australia-private-a" {
  subnet_id      = aws_subnet.australia-a-private.id
  route_table_id = aws_route_table.australia-private.id
}

resource "aws_route_table_association" "australia-private-b" {
  subnet_id      = aws_subnet.australia-a-private.id
  route_table_id = aws_route_table.australia-private.id
}


#public

resource "aws_route_table_association" "australia-public-a" {
  subnet_id      = aws_subnet.australia-a-public.id
  route_table_id = aws_route_table.australia-public.id
}

resource "aws_route_table_association" "australia-public-b" {
  subnet_id      = aws_subnet.australia-b-public.id
  route_table_id = aws_route_table.australia-public.id
}

# Create Route Table and Route Table Association for Hong Kong
resource "aws_route_table" "hong-kong-private" {
  vpc_id = aws_vpc.hong-kong.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.hong-kong_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "hong-kong-private"
  }
}

resource "aws_route_table" "hong-kong-public" {
  vpc_id = aws_vpc.hong-kong.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.hong-kong_igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "hong-kong-public"
  }
}

#private

resource "aws_route_table_association" "hong-kong-private-a" {
  subnet_id      = aws_subnet.hong-kong-a-private.id
  route_table_id = aws_route_table.hong-kong-private.id
}

resource "aws_route_table_association" "hong-kong-private-b" {
  subnet_id      = aws_subnet.hong-kong-b-private.id
  route_table_id = aws_route_table.hong-kong-private.id
}


#public

resource "aws_route_table_association" "hong-kong-public-a" {
  subnet_id      = aws_subnet.hong-kong-a-public.id
  route_table_id = aws_route_table.hong-kong-public.id
}

resource "aws_route_table_association" "hong-kong-public-b" {
  subnet_id      = aws_subnet.hong-kong-b-public.id
  route_table_id = aws_route_table.hong-kong-public.id
}

# Create Route Table and Route Table Association for Caalifornia
resource "aws_route_table" "california-private" {
  vpc_id = aws_vpc.california.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.california_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "california-private"
  }
}

resource "aws_route_table" "california-public" {
  vpc_id = aws_vpc.california.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.california_igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "california-public"
  }
}

#private

resource "aws_route_table_association" "california-private-a" {
  subnet_id      = aws_subnet.california-a-private.id
  route_table_id = aws_route_table.california-private.id
}

resource "aws_route_table_association" "california-private-b" {
  subnet_id      = aws_subnet.california-b-private.id
  route_table_id = aws_route_table.california-private.id
}


#public

resource "aws_route_table_association" "california-public-a" {  
  subnet_id      = aws_subnet.california-a-public.id
  route_table_id = aws_route_table.california-public.id
}

resource "aws_route_table_association" "california-public-b" {
  subnet_id      = aws_subnet.california-b-public.id
  route_table_id = aws_route_table.california-public.id
}

# Create Route Table and Route Table Association for Tokyo-TestB
resource "aws_route_table" "tokyo-test-private" {
  vpc_id = aws_vpc.tokyo-testb.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.tokyo-test_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
      core_network_arn           = ""
    },
  ]

  tags = {
    Name = "tokyo-test-private"
  }
}

resource "aws_route_table" "tokyo-test-public" {
  vpc_id = aws_vpc.tokyo-testb.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyo-test_igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "tokyo-test-public"
  }
}

#private

resource "aws_route_table_association" "tokyo-test-private-b" {
  subnet_id      = aws_subnet.tokyo-testb-private.id
  route_table_id = aws_route_table.tokyo-test-private.id
}

#public

resource "aws_route_table_association" "tokyo-test-public-a" {
  subnet_id      = aws_subnet.tokyo-testa-public.id
  route_table_id = aws_route_table.tokyo-test-public.id
}
