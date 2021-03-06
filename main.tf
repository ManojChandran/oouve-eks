#------------------------------root/main.tf-------------------------------
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
terraform {
# To prevent automatic upgrades to new major versions 
# that may contain breaking changes
#--------------------------------------------------------------------------
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
## Stores the state file back up in s3 bucket
## interpolations cannot be used becasue the actvity is done initial stage
## need to create s3 bucket and folder prior to using the backend
#--------------------------------------------------------------------------
#  backend "s3" {
#    bucket = "myterraformstatebackupfile0002"
#    key    = "terraform/terraform.tfstate"
#    region = "us-east-1"
#  }
}

provider "aws" {
  region = "${var.aws-region}"
}