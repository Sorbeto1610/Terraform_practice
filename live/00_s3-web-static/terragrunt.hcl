terraform {
  # Deploy version v0.0.1 in prod
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/s3_web_static?ref=s3_web_static/v0.0.2"
}

inputs = {
  index_document = "index.html"
}

include {
  path = find_in_parent_folders()
}