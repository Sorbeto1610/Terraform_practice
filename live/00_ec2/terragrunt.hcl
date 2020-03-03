terraform {
  # Deploy version v0.0.1 in prod
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/ec2?ref=ec2/v0.0.5"
}

inputs = {
  ami_id                    = "ami-03ef731cc103c9f09" # By default is ubuntu
}

include {
  path = find_in_parent_folders()
}