variable "location" {
  description = "location to deploy the resource"
  type        = string
  default     = "us-west-2"
}

variable "instance_type_value" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_value" {
  description = "ami-value"
  type        = string
  default     = "ami-830c94e3"

} 
