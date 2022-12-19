remote_state{
    backend = "gcs"
    config = {
        bucket = "state-bucket-tftggatst"
        prefix = "tst"
        project = "sandbox2-372116"
    }
}

terraform {

}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "google" {
  region = "us-west-1"
}
EOF
}

