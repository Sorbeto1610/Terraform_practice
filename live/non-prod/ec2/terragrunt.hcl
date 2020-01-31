terraform {
  # Deploy version v0.0.1 in prod
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/ec2?ref=v0.0.6"

  extra_arguments "common_vars" {
    arguments = [
      "-var-file=${get_terragrunt_dir()}/../../common.tfvars",
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
}

include {
  path = find_in_parent_folders()
}