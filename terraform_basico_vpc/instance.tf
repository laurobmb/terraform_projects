resource "aws_instance" "lote01" {

    ami = var.ami
    instance_type = var.modsec_master_instance_type
    count = var.modsec_master_count

    subnet_id = aws_subnet.public_subnet_a_01.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ 
        aws_security_group.kubernetes.id
    ]

    key_name = aws_key_pair.cluster_key.key_name

    tags = merge(var.tags, { 
        Name = format("cidade-carga")
    })

}


resource "aws_instance" "lote02" {

    ami = var.ami
    instance_type = var.modsec_master_instance_type
    count = var.modsec_master_count

    subnet_id = aws_subnet.public_subnet_a_02.id
    associate_public_ip_address = true

    vpc_security_group_ids = [ 
        aws_security_group.sg_vpc_02.id
    ]

    key_name = aws_key_pair.cluster_key.key_name

    tags = merge(var.tags, { 
        Name = format("cidade-carga")
    })

}

output "public_dns_master_01" {
  description = "lista o DNS publico da VPC"
  value       = aws_instance.lote01.*.public_ip
}

output "public_dns_master_02" {
  description = "lista o DNS publico da VPC"
  value       = aws_instance.lote02.*.public_ip
}