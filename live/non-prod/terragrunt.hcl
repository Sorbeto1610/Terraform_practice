remote_state {
  disable_init = tobool(get_env("TERRAGRUNT_DISABLE_INIT", "false"))
  backend = "s3"
  config = {
    bucket         = "camelot-terraform-backend-remote-tfstate"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "lock_terraform"
  }
}
