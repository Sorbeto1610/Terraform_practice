terraform {
  # Deploy version v0.0.1 in prod
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/backend?ref=v0.0.4"

  extra_arguments "common_vars" {
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
  dynamodb_table     = "lock_terraform"
  env                = "non-prod"
  s3_bucket          = "camelot-terraform-backend-remote-tfstate"
  tag_s3_bucket_name = "terraform-backend"
}