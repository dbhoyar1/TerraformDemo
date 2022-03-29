remote_state{
    backend = "s3"
    generate={

        path="Backend.tf"
        if_exists = "overwrite_terragrunt"
    
    }
    config ={
        bucket = "terraform-grunt-state-bucket-first-pro111"
        key="us-east-1/${path_relative_to_include()}/terraform.tfvars"
        region = "us-east-1"
        encrypt=false
        dynamodb_table="cources-lack-table11" //for storing lock files
        profile="default"
    }
}
    

    terraform{
        # Force Terraform to not ask for input value if some variables are undefined.
        extra_arguments "variables"{

            //returns the list of terraform commands that accept -var and -var-file parameters. This function is used when defining extra_arguments.
            commands = get_terraform_commands_that_need_vars()
            optional_var_files = [
            find_in_parent_folders("environments.tfvars", "ignore")
        ]
        }
    }

    

    generate "provider"{
        path="provider.tf"
        if_exists="overwrite_terragrunt"
        contents = <<EOF
        provider "aws"{
            profile="default"
            region="us-east-1"
            access_key = "AKIASB7GREQP3H73FHWL"
            secret_key = "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"

        }
        EOF
    }