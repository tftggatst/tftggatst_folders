remote_state{
    backend = "gcs"
    config = {
        bucket = "state-bucket-tftggatst"
        prefix = "sandbox2"
        project = "tftggatst"
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

