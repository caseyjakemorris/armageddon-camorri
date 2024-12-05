# Load Balancer for Tokyo region
resource "aws_lb" "tokyo_alb" {
  name               = "tokyo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.tokyo-SG02-LB01.id]
  subnets            = [
    aws_subnet.tokyo-a-public.id,
    aws_subnet.tokyo-d-public.id,
  ]
  provider = aws.tokyo
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "TokyoLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "tokyo-http" {
  load_balancer_arn = aws_lb.tokyo_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.tokyo

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tokyo_tg.arn
  }
}


output "tokyo-lb_dns_name" {
  value       = aws_lb.tokyo_alb.dns_name
  description = "The DNS name of the Tokyo Load Balancer."
}

# Load Balancer for New York region
resource "aws_lb" "new-york_alb" {
  name               = "new-york-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.new-york-SG02-LB01.id]
  subnets            = [
    aws_subnet.new-york-a-public.id,
    aws_subnet.new-york-b-public.id,
  ]
  provider = aws.new-york
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "NewYorkLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "new-york-http" {
  load_balancer_arn = aws_lb.new-york_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.new-york

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.new-york_tg.arn
  }
}


output "new-york-lb_dns_name" {
  value       = aws_lb.new-york_alb.dns_name
  description = "The DNS name of the New York Load Balancer."
}

# Load Balancer for London region
resource "aws_lb" "london_alb" {
  name               = "london-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.london-SG02-LB01.id]
  subnets            = [
    aws_subnet.london-a-public.id,
    aws_subnet.london-b-public.id,
  ]
  provider = aws.london
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "LondonLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "london-http" {
  load_balancer_arn = aws_lb.london_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.london

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.london_tg.arn
  }
}
output "london-lb_dns_name" {
  value       = aws_lb.london_alb.dns_name
  description = "The DNS name of the London Load Balancer."
}

# Load Balancer for Sao Paulo region
resource "aws_lb" "sao-paulo_alb" {
  name               = "sao-paulo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sao-paulo-SG02-LB01.id]
  subnets            = [
    aws_subnet.sao-paulo-a-public.id,
    aws_subnet.sao-paulo-c-public.id,
  ]
  provider = aws.sao-paulo
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "SaoPauloLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "sao-paulo-http" {
  load_balancer_arn = aws_lb.sao-paulo_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.sao-paulo

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.sao-paulo_tg.arn
  }
}
output "sao-paulo-lb_dns_name" {
  value       = aws_lb.sao-paulo_alb.dns_name
  description = "The DNS name of the Sao Paulo Load Balancer."
}

# Load Balancer for Australia region
resource "aws_lb" "australia_alb" {
  name               = "australia-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.australia-SG02-LB01.id]
  subnets            = [
    aws_subnet.australia-a-public.id,
    aws_subnet.australia-b-public.id,
  ]
  provider = aws.australia
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "AustraliaLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "australia-http" {
  load_balancer_arn = aws_lb.australia_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.australia

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.australia_tg.arn
  }
}
output "australia-lb_dns_name" {
  value       = aws_lb.australia_alb.dns_name
  description = "The DNS name of the Australia Load Balancer."
}

# Load Balancer for Hong Kong region
resource "aws_lb" "hong-kong_alb" {
  name               = "hong-kong-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.hong-kong-SG02-LB01.id]
  subnets            = [
    aws_subnet.hong-kong-a-public.id,
    aws_subnet.hong-kong-b-public.id,
  ]
  provider = aws.hong-kong
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "HongKongLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "hong-kong-http" {
  load_balancer_arn = aws_lb.hong-kong_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.hong-kong

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.hong-kong_tg.arn
  }
}
output "hong-kong-lb_dns_name" {
  value       = aws_lb.hong-kong_alb.dns_name
  description = "The DNS name of the Hong Kong Load Balancer."
}

# Load Balancer for California region
resource "aws_lb" "california_alb" {
  name               = "california-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.california-SG02-LB01.id]
  subnets            = [
    aws_subnet.california-a-public.id,
    aws_subnet.california-c-public.id,
  ]
  provider = aws.california
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "CaliforniaLoadBalancer"
    Service = "armageddon"
    Owner   = "camorri"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "california-http" {
  load_balancer_arn = aws_lb.california_alb.arn
  port              = 80
  protocol          = "HTTP"
  provider = aws.california

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.california_tg.arn
  }
}
output "california-lb_dns_name" {
  value       = aws_lb.california_alb.dns_name
  description = "The DNS name of the California Load Balancer."
}

# Load Balancer for Tokyo Test region
# resource "aws_lb" "tokyo-test_alb" {
#   name               = "tokyo-test-load-balancer"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.tokyo-test-SG02-LB01.id]
#   subnets            = [
#     aws_subnet.tokyo-testa-public.id,
#   ]
#   provider = aws.tokyo-testb
#   enable_deletion_protection = false
# #Lots of death and suffering here, make sure it's false

#   tags = {
#     Name    = "TokyoTestLoadBalancer"
#     Service = "armageddon"
#     Owner   = "camorri"
#     Project = "Web Service"
#   }
# }

# resource "aws_lb_listener" "tokyo-test-http" {
#   load_balancer_arn = aws_lb.tokyo-test_alb.arn
#   port              = 80
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.tokyo-testa_tg.arn
#   }
# }
# output "tokyo-test-lb_dns_name" {
#   value       = aws_lb.tokyo-test_alb.dns_name
#   description = "The DNS name of the Tokyo Test Load Balancer."
# }
