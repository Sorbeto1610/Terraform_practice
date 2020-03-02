terraform {
  # Deploy version v0.0.1 in prod
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/ec2?ref=ec2/v0.0.5"
    extra_arguments "common_vars" {
    arguments = [
      "-var-file=${get_terragrunt_dir()}/../common.tfvars",
    ]
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]
  }
}

inputs = {
  instance_type = "t2.micro"
  tag_name      = "my-esme-ec2-instance"
  aws_public_key_ssh_path = "~/.ssh/id_rsa_aws.pub"
//  region = "eu-west-1" # By defaut is eu-west-1
  number_instance_to_create = 3 # By default is 1
//  instance_type = "t2.micro"  # By default is t2.micro
//  ami_id = "ami-03ef731cc103c9f09" # By default is ubuntu
}

include {
  path = find_in_parent_folders()
}