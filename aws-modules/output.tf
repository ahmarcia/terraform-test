output "consul_server_asg_name" {
  value = "${module.consul.asg_name_servers}"
}
