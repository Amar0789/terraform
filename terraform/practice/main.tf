resource "aws_lb" "main"{
    name = "app_alb"
    load_balancer_type = "application_load_balancer"
    internal = false

}