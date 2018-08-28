resource "aws_ecs_service" "test-ecs-service" {
  	name            = "test-ecs-service"
  	iam_role        = "${aws_iam_role.ecs-service-role.name}"
  	cluster         = "${aws_ecs_cluster.test-ecs-cluster.id}"
  	task_definition = "${aws_ecs_task_definition.nginx.family}:${max("${aws_ecs_task_definition.nginx.revision}", "${data.aws_ecs_task_definition.nginx.revision}")}"
  	desired_count   = 2

  	load_balancer {
    	target_group_arn  = "${aws_elb_target_group.my-elb.arn}"
    	container_port    = 80
    	container_name    = "nginx"
	}
}
