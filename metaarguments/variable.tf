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

variable "config" {
    description = "Configuration for the number of resources to create."
    type        = object({
        count = number
    })
    default     = {
        count = 3
    }
}

variable "bucket_staging_name" {
    description = "The name of the S3 bucket to be created."
    type        = list(string)
    default     = ["varmabucketdevops001", "varmabucketdevops002", "varmabucketdevops003"]
}

variable "bucket_dev_name" {
    description = "The name of the S3 bucket to be created."
    type        = set(string)
    default     = ["varmabucketdevops2001", "varmabucketdevops2002", "varmabucketdevops2003"]
}