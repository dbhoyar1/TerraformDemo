remote_state{
    backend = "s3"
    generate={

        path="Backend.tf"
        if_exists = "overwrite_terragrunt"
    }
    config ={
        bucket = "terraform-grunt-state-bucket-first-pro"
        key="us-east-1/${path_relative_to_include()}/terraform.tfvars"
        region = "us-east-1"
        encrypt=false
        dynamodb_table="cources-lack-table"
        profile="default"
    }
}