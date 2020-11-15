terraform {
  # Deploy version v0.0.1 in prod
  source = "git@gitlab.com:lcaminale/infrastructure-modules.git//modules/s3_web_static?ref=s3_web_static/v0.0.3"
}

inputs = {
  index_document = "index.html"
  s3_bucket_name = "my-beautiful-bucket-for-esme-demo"
}

include {
  path = find_in_parent_folders()
}
