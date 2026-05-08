variable "tags" {
    description = "A map of tags to assign to the resource."
    type        =  string
    default     = "staging"
  
}

variable "region" {
    description = "The AWS region where resources will be created."
    type        = string
    default     = "ap-south-1"
}

variable "instance_type" {
    description = "The type of EC2 instance to create."
    type        = string
    default     = "t3.micro"
}
