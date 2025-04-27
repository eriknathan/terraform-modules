# Target Group Metabase
resource "aws_lb_target_group" "this" {
  name        = var.tg_name
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "instance"
  health_check {
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }
}

# Listener Rule Metabase
resource "aws_lb_listener_rule" "this" {
  listener_arn = var.alb_listerner_arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }

  condition {
    host_header {
      values = [var.route53_endpoint]
    }
  }

  tags = {
    Name = var.route53_endpoint
  }
}

# Target Group Association Metabase
resource "aws_lb_target_group_attachment" "this" {
  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.instance_id
  port             = var.alb_port_attachment
}

# Route53
resource "aws_route53_record" "this" {
  zone_id = var.route53_zone_id
  name    = var.route53_endpoint
  type    = "A"

  alias {
    name                   = var.alb_listener_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}