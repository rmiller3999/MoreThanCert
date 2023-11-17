
output "container_name" {
  value       = docker_container.nodered_container.name
  description = "the name of the container"
}

# tostring function is used to convert the external port number to a string before joining it with the container name
output "Container_Info" {
  value       = join(";", [docker_container.nodered_container.name, tostring(docker_container.nodered_container.ports[0].external)])
  description = "Information about the Docker container external port"
}


# output "IP_Address" {
#   value       = docker_container.nodered_container.ip_address
#   description = "the IP address of the container"
# }
# having issues grabing the docker ip address and having it output. docker inspect nodered | grep IPAddress

