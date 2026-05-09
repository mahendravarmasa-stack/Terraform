variable "region" {
    description = "The AWS region to create resources in."
    type        = set(string)
    default = ["ap-south-1" , "us-east-1" , "us-west-2"]
  
}


variable "bucket_name" {
    description = "The name of the S3 bucket to create."
    type        = string
    default = "mvbucket-terraform2003"
  
}

variable "tags"{
    description = "Tags to apply to the S3 bucket."
    type        = map(string)
    default = {
        Name        = "My bucket"
        Ec2         = "Dev EC2 instance"
        SecurityGroup = "Dev Ec2 security group"
        Environment = "Dev"
    }
}


variable "instance_type" {
    description = "The type of EC2 instance to create."
    type        = list(string)
    default = ["t3.micro", "t3.small", "t3.medium"]
  
}

variable "security_cidr_blocks" {
    description = "CIDR blocks to allow in the security group."
    type        = list(string)
    default = ["0.0.0.0/0" , "10.0.0.0/16" , "11.0.0.0/8"]

}

variable "ingress_values" {
    description = "The port to allow in the security group."
    type        = tuple([number, string, number])
    default = [80, "tcp", 80]
  
}

variable "egress_values" {
    description = "The port to allow in the security group."
    type        = tuple([number, string, number])
    default = [0, "-1", 0]
  
}

variable "config" {
    description = "The configuration to apply to the Ec2 instance."
    type        = object({
        count = number
        ami = string
        monitoring = bool
        public_ip = bool
    })
    default = {
        count = 2
        ami = "ami-07a00cf47dbbc844c"
        monitoring = true
        public_ip = true
    }
  
}








