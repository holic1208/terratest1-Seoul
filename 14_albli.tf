resource "aws_lb_listener" "suuu_albli" {
  load_balancer_arn = aws_lb.suuu_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.suuu_albtg.arn
  }
}
