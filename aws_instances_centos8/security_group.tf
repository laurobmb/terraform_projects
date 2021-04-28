
resource "aws_security_group" "com-dynamic-block" {
  name        = "P.S.G"
  description = "SG de teste, com dynamic-block"

  dynamic "ingress" {
    for_each = var.default_ingress
    content {
      description = ingress.value["description"]
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  dynamic "egress" {
    for_each = var.default_egress
    content {
      description = egress.value["description"]
      from_port   = egress.key
      to_port     = egress.key
      protocol    = "tcp"
      cidr_blocks = egress.value["cidr_blocks"]
    }
  }

  tags = {
    Name = "ficaemcasa"
  }
}
