# create ecr repo

resource "aws_ecr_repository" "repository" {
    for_each = toset(var.repository_list)
    name = each.key
  
}

# build docker images and push to ecr

resource "docker_registry_image" "backend" {
    for_each = toset(var.repository_list)
    name = "${aws_ecr_repository.repository[each.key].repository_url}:latest"

    build {
        context = "../application"
        dockerfile = "${each.key}.Dockerfile"
    }
  
}



# setup proper credential to push to ecr
