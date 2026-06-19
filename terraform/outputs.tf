output "vpc_id" {

  value = aws_vpc.main.id

}

output "subnet1" {

  value = aws_subnet.public1.id

}

output "subnet2" {

  value = aws_subnet.public2.id

}

output "cluster_name" {

  value = aws_ecs_cluster.cluster.name

}

output "service_name" {

  value = aws_ecs_service.service.name

}

output "repository_url" {

  value = aws_ecr_repository.app.repository_url

}