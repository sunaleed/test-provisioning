variable "assume_role_arn" {
  description = "The role to assume when accessing the AWS API."
  default     = ""
}

# Atlantis user
variable "atlantis_user" {
  description = "The username that will be triggering atlantis commands. This will be used to name the session when assuming a role. More information - https://github.com/runatlantis/atlantis#assume-role-session-names"
  default     = "atlantis_user"
}

# Account IDs
# Add all account ID to here 
variable "account_id" {
  default = {
    id        = "079900528673"
    art-id    = "816736805842"
    datadog   = "464622532012"
    sumologic = "926226587429"
  }
}

# Remote State that will be used when creating other resources
# You can add any resource here, if you want to refer from others
variable "remote_state" {
  default = {
    vpc = {
      tmcd_apnortheast2 = {
        bucket = "suna-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/vpc/tmcd_apnortheast2/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
    iam = {
      suna-id = {
        bucket = "suna-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/iam/suna-id/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }

    kms = {
      suna-id = {
        apne2 = {
          bucket = "suna-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/kms/suna-id/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    ecs = {
      nginx = {
        tmcdapne2 = {
          bucket = "suna-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/nginx/tmcd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
      demo = {
        tmcdapne2 = {
          bucket = "suna-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/demo/tmcd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    security_group = {
      suna-id = {
        tmcdapne2 = {
          bucket = "suna-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/securitygroup/suna-id/tmcd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    codedeploy = {
      suna-id = {
        apne2 = {
          bucket = "suna-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/codedeploy/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    secretsmanager = {
      suna-id = {
        apne2 = {
          bucket = "suna-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/secretsmanager/suna-id/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    eks = {
      tmcdapne2-nhwy = {
        bucket = "suna-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/eks/tmcd_apnortheast2/tmcdapne2-nhwy/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }

    s3 = {
      suna-id = {
        bucket = "suna-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/s3/suna-id/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
  }
}
