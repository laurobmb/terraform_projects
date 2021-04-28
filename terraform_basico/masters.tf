resource "aws_instance" "master" {

    ami = var.ami
    instance_type = var.modsec_master_instance_type
    count = var.modsec_master_count

    subnet_id = aws_subnet.public_subnet_a.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ 
        aws_security_group.kubernetes.id
    ]

    key_name = aws_key_pair.cluster_key.key_name

    tags = merge(var.tags, { 
        Name = format("cidade-carga")
    })

}

output "public_dns_master" {
  description = "lista o DNS publico da VPC"
  value       = aws_instance.master.*.public_ip
}
