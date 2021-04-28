
variable "aws_profile" {
    description = "profile aws"
    default     = "central"
}

variable "project_name" {
    description = "Cluster Name"
    default     = "mod_sec"
}

variable "ami" {
    description = "Amazon Linux 2 AMI"
    default = "ami-0ca43e15336e41670"
}

variable "aws_region" {
    description = "AWS Region for the VPC"
    default     = "sa-east-1"
}

variable "aws_key_path" {
    description = "key_path"
    default     = "id_rsa_.pub"
}

variable "tags" {
    default = {
        Project       = "decript.co"
        enviroment    = "prod"
    }
}

variable "modsec_master_instance_type" {
    description = "ModSEC instance type"
    default     = "t2.large"
}

variable "modsec_master_count" {
    description = "ModSEC"
    default     = 20
}
