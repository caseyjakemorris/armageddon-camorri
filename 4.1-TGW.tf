# Create 1 route per transit gateway
# For each route table I need two route table associations
# One for the VPC, and one for the peering attachment
# Also need one VPC route and one peering route
# The VPC route is peering backwards toward the regions own vpc
# The peering route is peering forward to the other region's cidr block

# Create Transit Gateway Resource for Tokyo

resource "aws_ec2_transit_gateway" "tokyo_tgw" {
  provider = aws.tokyo

  description = "Tokyo Transit Gateway"
  tags = {
    Name    = "Tokyo_TGW"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

output "tokyo_tgw_id" {
  value = aws_ec2_transit_gateway.tokyo_tgw.id
  description = "value of the Tokyo Transit Gateway ID"
}

# Create transit gateway attachment for Tokyo VPC

resource "aws_ec2_transit_gateway_vpc_attachment" "tokyo_tgw_attachment" {
  provider = aws.tokyo

  subnet_ids         = [aws_subnet.tokyo-a-private.id, aws_subnet.tokyo-d-private.id]
  transit_gateway_id = aws_ec2_transit_gateway.tokyo_tgw.id
  vpc_id             = aws_vpc.tokyo.id
  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true

  tags = {
    Name    = "Tokyo_TGW_Attachment"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create transit gateway route table for Tokyo
resource "aws_ec2_transit_gateway_route_table" "tokyo_tgw_route_table" {
  provider = aws.tokyo

  transit_gateway_id = aws_ec2_transit_gateway.tokyo_tgw.id

  tags = {
    Name    = "Tokyo_TGW_Route_Table"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create transit gateway peering attachment for Tokyo
# Peering attachment is a bi-directional connection between two transit gateways
# Necessary for every pair of transit gateways that need to communicate with each other

resource "aws_ec2_transit_gateway_peering_attachment" "new-york-tokyo_tgw_peering_attachment" {
  provider = aws.tokyo
  transit_gateway_id = aws_ec2_transit_gateway.tokyo_tgw.id
  peer_transit_gateway_id = aws_ec2_transit_gateway.new-york_tgw.id   # Placeholder, replace with actual TGW ID from New York
  peer_region = "us-east-1"  
}

# Create transit gateway peering attachment acceptor for Tokyo

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "tokyo_tgw_peering_attachment_accepter" {
  provider = aws.new-york
  transit_gateway_attachment_id = aws_ec2_transit_gateway_peering_attachment.new-york-tokyo_tgw_peering_attachment.id

  tags = {
    Name    = "Tokyo_TGW_Peering_Attachment_Accepter"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create Transit Gateway Resource for New York

resource "aws_ec2_transit_gateway" "new-york_tgw" {
  provider = aws.new-york

  description = "New York Transit Gateway"
  tags = {
    Name    = "NewYork_TGW"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

output "new-york_tgw_id" {
  value = aws_ec2_transit_gateway.new-york_tgw.id
  description = "value of the New York Transit Gateway ID"
}

# Create transit gateway attachment for New York VPC

resource "aws_ec2_transit_gateway_vpc_attachment" "new-york_tgw_attachment" {
  provider = aws.new-york

  subnet_ids         = [aws_subnet.new-york-a-private.id, aws_subnet.new-york-b-private.id]
  transit_gateway_id = aws_ec2_transit_gateway.new-york_tgw.id
  vpc_id             = aws_vpc.new-york.id
  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true

  tags = {
    Name    = "NewYork_TGW_Attachment"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

# Create transit gateway route table for New York

resource "aws_ec2_transit_gateway_route_table" "new-york_tgw_route_table" {
  provider = aws.new-york

  transit_gateway_id = aws_ec2_transit_gateway.new-york_tgw.id
  tags = {
    Name    = "NewYork_TGW_Route_Table"
    Service = "armageddon"
    Owner   = "camorri"
  }
}

