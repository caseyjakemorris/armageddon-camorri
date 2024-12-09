# Create ASG For the Tokyo VPC
resource "aws_autoscaling_group" "tokyo_asg" {
  provider = aws.tokyo
  name_prefix           = "tokyo-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.tokyo-a-private.id,
    aws_subnet.tokyo-d-private.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.tokyo_tg.arn]

  launch_template {
    id      = aws_launch_template.tokyo_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "tokyo-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "tokyo_scaling_policy" {
  provider = aws.tokyo
  name                   = "tokyo-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.tokyo_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "tokyo_asg_attachment" {
  provider = aws.tokyo
  autoscaling_group_name = aws_autoscaling_group.tokyo_asg.name
  lb_target_group_arn    = aws_lb_target_group.tokyo_tg.arn
}

# Create ASG For the New York VPC
resource "aws_autoscaling_group" "new-york_asg" {
  provider = aws.new-york
  name_prefix           = "new-york-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.new-york-a-public.id,
    aws_subnet.new-york-b-public.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.new-york_tg.arn]

  launch_template {
    id      = aws_launch_template.new-york_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "new-york-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "new-york_scaling_policy" {
  provider = aws.new-york
  name                   = "new-york-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.new-york_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "new-york_asg_attachment" {
  provider = aws.new-york
  autoscaling_group_name = aws_autoscaling_group.new-york_asg.name
  lb_target_group_arn    = aws_lb_target_group.new-york_tg.arn
}

# Create ASG For the London VPC
resource "aws_autoscaling_group" "london_asg" {
  provider = aws.london
  name_prefix           = "london-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.london-a-private.id,
    aws_subnet.london-b-private.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.london_tg.arn]

  launch_template {
    id      = aws_launch_template.london_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "london-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "london_scaling_policy" {
  provider = aws.london
  name                   = "london-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.london_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "london_asg_attachment" {
  provider = aws.london
  autoscaling_group_name = aws_autoscaling_group.london_asg.name
  lb_target_group_arn    = aws_lb_target_group.london_tg.arn
}

# Create ASG For the Sao Paulo VPC
resource "aws_autoscaling_group" "sao-paulo_asg" {
  provider = aws.sao-paulo
  name_prefix           = "sao-paulo-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.sao-paulo-a-public.id,
    aws_subnet.sao-paulo-c-public.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.sao-paulo_tg.arn]

  launch_template {
    id      = aws_launch_template.sao-paulo_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "sao-paulo-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "sao-paulo_scaling_policy" {
  provider = aws.sao-paulo
  name                   = "sao-paulo-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.sao-paulo_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "sao-paulo_asg_attachment" {
  provider = aws.sao-paulo
  autoscaling_group_name = aws_autoscaling_group.sao-paulo_asg.name
  lb_target_group_arn    = aws_lb_target_group.sao-paulo_tg.arn
}

# Create ASG For the Australia VPC
resource "aws_autoscaling_group" "australia_asg" {
  provider = aws.australia
  name_prefix           = "australia-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.australia-a-public.id,
    aws_subnet.australia-b-public.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.australia_tg.arn]

  launch_template {
    id      = aws_launch_template.australia_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "australia-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "australia_scaling_policy" {
  provider = aws.australia
  name                   = "australia-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.australia_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "australia_asg_attachment" {
  provider = aws.australia
  autoscaling_group_name = aws_autoscaling_group.australia_asg.name
  lb_target_group_arn    = aws_lb_target_group.australia_tg.arn
}

# # Create ASG For the Hong Kong VPC
resource "aws_autoscaling_group" "hong-kong_asg" {
  provider = aws.hong-kong
  name_prefix           = "hong-kong-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.hong-kong-a-public.id,
    aws_subnet.hong-kong-b-public.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.hong-kong_tg.arn]

  launch_template {
    id      = aws_launch_template.hong-kong_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "hong-kong-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "hong-kong_scaling_policy" {
  provider = aws.hong-kong
  name                   = "hong-kong-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.hong-kong_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "hong-kong_asg_attachment" {
  provider = aws.hong-kong
  autoscaling_group_name = aws_autoscaling_group.hong-kong_asg.name
  lb_target_group_arn    = aws_lb_target_group.hong-kong_tg.arn
}

# Create ASG For the California VPC
resource "aws_autoscaling_group" "california_asg" {
  provider = aws.california
  name_prefix           = "california-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 1
  vpc_zone_identifier   = [
    aws_subnet.california-a-public.id,
    aws_subnet.california-c-public.id,
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.california_tg.arn]

  launch_template {
    id      = aws_launch_template.california_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "california-instance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "california_scaling_policy" {
  provider = aws.california
  name                   = "california-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.california_asg.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "california_asg_attachment" {
  provider = aws.california
  autoscaling_group_name = aws_autoscaling_group.california_asg.name
  lb_target_group_arn    = aws_lb_target_group.california_tg.arn
}

