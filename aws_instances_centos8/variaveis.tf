variable default_ingress{
    type = map(object({description=string,cidr_blocks=list(string)}))
    default={
        22 = {description="Inbound SSH",cidr_blocks=["45.171.127.130/32"]}
        80 = {description="Inbound HTTP",cidr_blocks=["0.0.0.0/0"]}
        443 = {description="Inbound HTTPS",cidr_blocks=["0.0.0.0/0"]}
        8080 = {description="Inbound 8080",cidr_blocks=["0.0.0.0/0"]}
        8000 = {description="Inbound 8000",cidr_blocks=["0.0.0.0/0"]}
    }
}

variable default_egress{
    type = map(object({description=string,cidr_blocks=list(string)}))
    default={
        80 = {description="Outbound HTTP",cidr_blocks=["0.0.0.0/0"]}
        443 = {description="Outbound HTTPS",cidr_blocks=["0.0.0.0/0"]}
        8000 = {description="Outbound HTTPS",cidr_blocks=["0.0.0.0/0"]}
    }
}