# Target group for the Tokyo load balancer
resource "aws_lb_target_group" "tokyo_tg" {
  name     = "tokyo-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.tokyo.id
  provider = aws.tokyo
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "TokyoTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the New York load balancer
resource "aws_lb_target_group" "new-york_tg" {
  name     = "new-york-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.new-york.id
  provider = aws.new-york
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "NewYorkTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the London load balancer
resource "aws_lb_target_group" "london_tg" {
  name     = "london-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.london.id
  provider = aws.london
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "LondonTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the Sao Paulo load balancer
resource "aws_lb_target_group" "sao-paulo_tg" {
  name     = "sao-paulo-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.sao-paulo.id
  provider = aws.sao-paulo
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "SaoPauloTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the Australia load balancer
resource "aws_lb_target_group" "australia_tg" {
  name     = "australia-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.australia.id
  provider = aws.australia
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "AustraliaTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the Hong Kong load balancer
resource "aws_lb_target_group" "hong-kong_tg" {
  name     = "hong-kong-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.hong-kong.id
  provider = aws.hong-kong
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "HongKongTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the California load balancer
resource "aws_lb_target_group" "california_tg" {
  name     = "california-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.california.id
  provider = aws.california
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "CaliforniaTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

# Target group for the Tokyo Test load balancer
resource "aws_lb_target_group" "tokyo-testa_tg" {
  name     = "tokyo-testa-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.tokyo-testb.id
  provider = aws.tokyo-testb
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "TokyoTestTargetGroup"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

