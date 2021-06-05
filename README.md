# AWS EKS
Repo to build AWS EKS backed

# RUN Terraform

## Instalation  

Follow the commands to complete Terraform installation for ubuntu:
```
$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
$ sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
$ sudo apt-get update && sudo apt-get install terraform
```
> Check reference below for additional insatllation information.

Verify installation by version check: 

```
$ terraform --version
Terraform v0.15.3
on linux_amd64
+ provider registry.terraform.io/hashicorp/aws v3.42.0
```

## Set AWS account

By default, Terraform can detects AWS credentials set in our environment and uses them to sign requests to AWS. That way we don't need to manage credentials in your applications. The set your credentials in the following environment variables:

AWS_ACCESS_KEY_ID / AWS_SECRET_ACCESS_KEY /AWS_SESSION_TOKEN (optional)

The following examples show how you configure the environment variables.

Linux, OS X, or Unix

```
$ export AWS_ACCESS_KEY_ID=YOUR_AKID
$ export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
$ export AWS_SESSION_TOKEN=TOKEN
$ export AWS_REGION=us-east-1
```

Windows

```
C:\> set AWS_ACCESS_KEY_ID=YOUR_AKID
C:\> set AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
C:\> set AWS_SESSION_TOKEN=TOKEN
C:\> set AWS_REGION=us-east-1
```
## CLONE 

clone the repo, using git command.
```
$ git clone https://github.com/ManojChandran/oouve-networking.git
```

## Run
Navigate in to our project directory, follow the below commands.
```
$ terraform init
$ terrafrom plan 
$ terraform apply
```
> Refer "variable.tf" file in root directory for default values of VPC.