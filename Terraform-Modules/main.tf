provider "aws" {
   region = "us-east-1"
}

# example of using a module
module "ec2_instance" {
  source = "path/to/module"
  ami_value = "ami-value"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-id"
}