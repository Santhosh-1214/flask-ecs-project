resource "aws_ecs_task_definition" "task" {

  family = "${var.project_name}-task"

  network_mode = "awsvpc"

  requires_compatibilities = ["FARGATE"]

  cpu = "256"

  memory = "512"

  execution_role_arn = aws_iam_role.ecs_execution_role.arn

  task_role_arn = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([

    {

      name = "flask"

      image = "${aws_ecr_repository.app.repository_url}:latest"

      essential = true

      portMappings = [

        {

          containerPort = 5000

          hostPort = 5000

        }

      ]

    }

  ])

}