terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.location
}

# ------------------------------------------------------------------------------
# CREATE THE EC2 INSTANCE
# ------------------------------------------------------------------------------

resource "aws_instance" "app_server" {
  ami           = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name = "First_Terraform_creation"
  }
}


# ------------------------------------------------------------------------------
# CREATE THE S3 BUCKET
# ------------------------------------------------------------------------------

resource "aws_s3_bucket" "terraform_state" {
  bucket = "varsha-terraform-states" 

  versioning {
    enabled = true
  }
}

# ------------------------------------------------------------------------------
# CREATE THE DYNAMODB TABLE
# ------------------------------------------------------------------------------

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

