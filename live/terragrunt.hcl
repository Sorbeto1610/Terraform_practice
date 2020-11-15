remote_state {
  backend = "s3"

  config = {
    bucket         = "camelot-terraform-backend-remote-tfstate"
    key            = "${get_env("TF_VAR_env", "dev")}-${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "perso"
    encrypt        = true
    dynamodb_table = "lock_terraform"
  }
}

terraform {
  extra_arguments "conditional_vars" {
    commands = get_terraform_commands_that_need_vars()

    required_var_files = [
      "${get_parent_terragrunt_dir()}/common.tfvars"
    ]
  }
}
inputs = {
  environment = get_env("TF_VAR_env", "dev")
}
