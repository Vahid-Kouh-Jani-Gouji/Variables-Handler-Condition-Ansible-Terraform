
module "network" {
  source = "./modules/network"
  
}

module "ec2" {
  source = "./modules/ec2"
  server_names = ["loadbalancer", "app1", "app2", "app3"]
}

output "aws_instance_public_ip" {
    value = module.ec2.aws_instance_private_ip
}

output "aws_instance_private_ip" {
    value = module.ec2.aws_instance_public_ip
}