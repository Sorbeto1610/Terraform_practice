terraform {
  # Deploy version v0.0.1 in prod
   source = "git@gitlab.com:lcaminale/infrastructure-modules.git//ec2?ref=v0.0.1"

//    extra_arguments "common_vars" {
//    commands = get_terraform_commands_that_need_vars()
//
//    arguments = [
//      "-var-file=/Users/loic.caminale/Workspace/esme/terraform-practise/live/common.tfvars"
//    ]
//  }
}

inputs = {
  instance_type      = "t2.micro"
  tag_name           = "my-esme-ec2-instance"
}