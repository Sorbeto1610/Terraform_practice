locals {
  ami_id = {
    ubuntu_20_04 = "ami-0aef57767f5404a3c"
    ubuntu_18_04 = "ami-0dc8d444ee2a42d8a"
  }
}

terraform {
  # Deploy version v0.0.6 in dev
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/ec2?ref=ec2/v0.0.6"
}

inputs = {
  # Specific variables
  machines = {
    "t2.micro"  = 1
    "t2.medium" = 0
  }
  key_name                = "esme-key"
  aws_public_key_ssh_path = "~/.ssh/id_rsa_aws.pub"
  path_to_script          = "/dev/null"
  ami_id                  = local.ami_id.ubuntu_20_04
}

include {
  path = find_in_parent_folders()
}
