provider "aws" {
    region = "us-east-1"
}

resource "aws_key_pair" "minha_chave_pub" {
    key_name = "minha_chave_pub"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAwloDJCwinzux4Z7he92T+nfFsS1J2200JoAu2sJ5BqZpbwaWlip4cANqCuDrBw/c2WwzPhiSalvnlUsWdDN3v69nqXpgCnCMSnhzW+LE21VXRfqu/TRuHYuFooTwGXduPMXlegaaPLeC6BYU9vINJG5IhaIpF1wt3A/PCy6Dqgph48Vud1erZacl4TUiSDUXZ02CvNBRxxTzHw4MTMkWjyKLYJbUm9zSrqj2YTssZxh0Z8Vl3T/PvP1J1Ve4RuiJyE0klD00z1bgZn9addriVotaDJUMGzTZJ6mbBItYcXAbDtZcP5BeqbeHdm7nVk9Q1oD1yweDYCRU+AgeCNOX5Q== "
}

resource "aws_instance" "FastAPI" {
    #ami = "ami-01ca03df4a6012157" # Centos8
    ami = "ami-06a9702289b96b261" # Centos8 Minimal
    instance_type = "t2.small"
    #virtualization_type = "hvm"
    key_name = "minha_chave_pub"
    tags = {
        name = "k8s"
        type = "master"
    }
    security_groups = ["${aws_security_group.com-dynamic-block.name}"]

}

output "public_dns" {
  description = "lista o DNS publico da VPC"
  value       = aws_instance.FastAPI.*.public_dns
}
