# aws_internet_gateway.draco-gw:
resource "aws_internet_gateway" "draco-gw" {
    arn      = "arn:aws:ec2:us-east-1:858871515179:internet-gateway/igw-0cbe7d7eb59234908"
    id       = "igw-0cbe7d7eb59234908"
    owner_id = "858871515179"
    tags     = {
        "Name" = "draco-public-subnet"
    }
    tags_all = {
        "Name" = "draco-public-subnet"
    }
    vpc_id   = "vpc-0ab428b5b0682547e"
}

# aws_security_group.draco_allow_tls:
resource "aws_security_group" "draco_allow_tls" {
    arn                    = "arn:aws:ec2:us-east-1:858871515179:security-group/sg-0734bb4aa3cc33408"
    description            = "Allow TLS inbound traffic to Draco Machine"
    egress                 = [
        {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = ""
            from_port        = 0
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "-1"
            security_groups  = []
            self             = false
            to_port          = 0
        },
    ]
    id                     = "sg-0734bb4aa3cc33408"
    ingress                = [
        {
            cidr_blocks      = [
                "10.0.0.0/16",
            ]
            description      = "TLS from VPC"
            from_port        = 443
            ipv6_cidr_blocks = []
            prefix_list_ids  = []
            protocol         = "tcp"
            security_groups  = []
            self             = false
            to_port          = 443
        },
    ]
    name                   = ""
    owner_id               = "858871515179"
    revoke_rules_on_delete = false
    tags                   = {}
    tags_all               = {}
    vpc_id                 = "vpc-0ab428b5b0682547e"
}

# aws_subnet.draco-private-subnet:
resource "aws_subnet" "draco-private-subnet" {
    arn                                            = "arn:aws:ec2:us-east-1:858871515179:subnet/subnet-0af15e37bafbb9cca"
    assign_ipv6_address_on_creation                = false
    availability_zone                              = "us-east-1a"
    availability_zone_id                           = "use1-az6"
    cidr_block                                     = "10.0.0.0/24"
    enable_dns64                                   = false
    enable_lni_at_device_index                     = 0
    enable_resource_name_dns_a_record_on_launch    = false
    enable_resource_name_dns_aaaa_record_on_launch = false
    id                                             = "subnet-0af15e37bafbb9cca"
    ipv6_native                                    = false
    map_customer_owned_ip_on_launch                = false
    map_public_ip_on_launch                        = false
    owner_id                                       = "858871515179"
    private_dns_hostname_type_on_launch            = "ip-name"
    tags                                           = {
        "Name" = "draco-private-subnet"
    }
    tags_all                                       = {
        "Name" = "draco-private-subnet"
    }
    vpc_id                                         = "vpc-0ab428b5b0682547e"
}

# aws_subnet.draco-public-subnet:
resource "aws_subnet" "draco-public-subnet" {
    arn                                            = "arn:aws:ec2:us-east-1:858871515179:subnet/subnet-0ef8c2ba006049463"
    assign_ipv6_address_on_creation                = false
    availability_zone                              = "us-east-1f"
    availability_zone_id                           = "use1-az5"
    cidr_block                                     = "10.0.1.0/24"
    enable_dns64                                   = false
    enable_lni_at_device_index                     = 0
    enable_resource_name_dns_a_record_on_launch    = false
    enable_resource_name_dns_aaaa_record_on_launch = false
    id                                             = "subnet-0ef8c2ba006049463"
    ipv6_native                                    = false
    map_customer_owned_ip_on_launch                = false
    map_public_ip_on_launch                        = false
    owner_id                                       = "858871515179"
    private_dns_hostname_type_on_launch            = "ip-name"
    tags                                           = {
        "Name" = "draco-public-subnet"
    }
    tags_all                                       = {
        "Name" = "draco-public-subnet"
    }
    vpc_id                                         = "vpc-0ab428b5b0682547e"
}

# aws_vpc.draco-main-vpc:
resource "aws_vpc" "draco-main-vpc" {
    arn                                  = "arn:aws:ec2:us-east-1:858871515179:vpc/vpc-0ab428b5b0682547e"
    assign_generated_ipv6_cidr_block     = false
    cidr_block                           = "10.0.0.0/16"
    default_network_acl_id               = "acl-02176cb1e3ba147d9"
    default_route_table_id               = "rtb-05968cd62457cc388"
    default_security_group_id            = "sg-01e68c42a6471c546"
    dhcp_options_id                      = "dopt-0013b8a9552104489"
    enable_dns_hostnames                 = false
    enable_dns_support                   = true
    enable_network_address_usage_metrics = false
    id                                   = "vpc-0ab428b5b0682547e"
    instance_tenancy                     = "default"
    ipv6_netmask_length                  = 0
    main_route_table_id                  = "rtb-05968cd62457cc388"
    owner_id                             = "858871515179"
    tags                                 = {}
    tags_all                             = {}
}n