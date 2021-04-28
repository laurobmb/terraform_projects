
variable "aws_profile" {
    description = "profile aws"
    default     = "default"
}

variable "project_name" {
    description = "Cluster Name"
    default     = "mod_sec"
}

variable "ami" {
    description = "Amazon Linux 2 AMI"
    default = "ami-0742b4e673072066f"
}

variable "aws_region" {
    description = "AWS Region for the VPC"
    default     = "us-east-1"
}

variable "aws_key_path" {
    description = "key_path"
    default     = "/home/id_rsa.pub"
}

variable "tags" {
    default = {
        Project       = "decript.co"
        enviroment    = "prod"
    }
}

variable "modsec_master_instance_type" {
    description = "ModSEC instance type"
    default     = "t2.micro"
}

variable "modsec_master_count" {
    description = "ModSEC"
    default     = 2
}
