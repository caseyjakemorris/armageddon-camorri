# Create a Launch Template for the Tokyo EC2 instances
resource "aws_launch_template" "tokyo_LT" {
  provider = aws.tokyo
  name_prefix   = "tokyo_LT"
  image_id      = "ami-023ff3d4ab11b2525"  
  instance_type = "t2.micro"

  key_name = "Tokyo-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.tokyo-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in Tokyo</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "tokyo_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the New York EC2 instances
resource "aws_launch_template" "new-york_LT" {
  provider = aws.new-york
  name_prefix   = "new-york_LT"
  image_id      = "ami-0453ec754f44f9a4a"  
  instance_type = "t2.micro"

  key_name = "New-York-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.new-york-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in New York</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "new-york_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the London EC2 instances
resource "aws_launch_template" "london_LT" {
  provider = aws.london
  name_prefix   = "london_LT"
  image_id      = "ami-0c76bd4bd302b30ec"  
  instance_type = "t2.micro"

  key_name = "London-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.london-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in London</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "london_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the Sao Paulo EC2 instances
resource "aws_launch_template" "sao-paulo_LT" {
  provider = aws.sao-paulo
  name_prefix   = "sao-paulo_LT"
  image_id      = "ami-0c820c196a818d66a"  
  instance_type = "t2.micro"

  key_name = "Sao-Paulo-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.sao-paulo-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in Sao Paulo</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "sao-paulo_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the Australia EC2 instances
resource "aws_launch_template" "australia_LT" {
  provider = aws.australia
  name_prefix   = "australia_LT"
  image_id      = "ami-0146fc9ad419e2cfd"  
  instance_type = "t2.micro"

  key_name = "Australia-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.australia-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in Australia</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "australia_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the Hong Kong EC2 instances
resource "aws_launch_template" "hong-kong_LT" {
  provider = aws.hong-kong
  name_prefix   = "hong-kong_LT"
  image_id      = "ami-06f707739f2271995"  
  instance_type = "t3.micro"

  key_name = "Hong-Kong-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.hong-kong-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in Hong Kong</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "hong-kong_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the California EC2 instances
resource "aws_launch_template" "california_LT" {
  provider = aws.california
  name_prefix   = "california_LT"
  image_id      = "ami-038bba9a164eb3dc1"  
  instance_type = "t2.micro"

  key_name = "California-MyLinuxBox"

  vpc_security_group_ids = [aws_security_group.california-SG01-ASG01.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    # Get the IMDSv2 token
    TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

    # Background the curl requests
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
    curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
    wait

    macid=$(cat /tmp/macid)
    local_ipv4=$(cat /tmp/local_ipv4)
    az=$(cat /tmp/az)
    vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

    # Create HTML file
    cat <<-HTML > /var/www/html/index.html
    <!doctype html>
    <html lang="en" class="h-100">
    <head>
    <title>Casey Morris - Class 6</title>
    </head>
    <body>
    <div>
    <h1>Armageddon</h1>
    <h1>Chains Broken in California</h1>
    <p><b>Instance Name:</b> $(hostname -f) </p>
    <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
    <p><b>Availability Zone: </b> $az</p>
    <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
    </div>
    </body>
    </html>
    HTML

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
  EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "california_LT"
      Service = "armageddon"
      Owner   = "camorri"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create a Launch Template for the Tokyo Test EC2 instances
# resource "aws_launch_template" "tokyo-test_LT" {
#   name_prefix   = "tokyo-test_LT"
#   image_id      = "ami-023ff3d4ab11b2525"  
#   instance_type = "t2.micro"

#   key_name = "Tokyo-Test-MyLinuxBox"

#   vpc_security_group_ids = [aws_security_group.tokyo-test-SG01-ASG01.id]

#   user_data = base64encode(<<-EOF
#     #!/bin/bash
#     yum update -y
#     yum install -y httpd
#     systemctl start httpd
#     systemctl enable httpd

#     # Get the IMDSv2 token
#     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

#     # Background the curl requests
#     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
#     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
#     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
#     wait

#     macid=$(cat /tmp/macid)
#     local_ipv4=$(cat /tmp/local_ipv4)
#     az=$(cat /tmp/az)
#     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

#     # Create HTML file
#     cat <<-HTML > /var/www/html/index.html
#     <!doctype html>
#     <html lang="en" class="h-100">
#     <head>
#     <title>Casey Morris - Class 6</title>
#     </head>
#     <body>
#     <div>
#     <h1>Armageddon</h1>
#     <h1>Chains Broken in Tokyo Test</h1>
#     <p><b>Instance Name:</b> $(hostname -f) </p>
#     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
#     <p><b>Availability Zone: </b> $az</p>
#     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
#     </div>
#     </body>
#     </html>
#     HTML

#     # Clean up the temp files
#     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
#   EOF
#   )

#   tag_specifications {
#     resource_type = "instance"
#     tags = {
#       Name    = "tokyo-test_LT"
#       Service = "armageddon"
#       Owner   = "camorri"
#     }
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }

