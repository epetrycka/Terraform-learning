resource "aws_security_group" "VPC-ssh" {
  name        = "VPC-ssh"
  description = "Dev AWS ssh"
#   vpc_id      = aws_vpc.main.id # we use default so not necessary to provide vpc id -> vpc default by default

  tags = {
    Name = "VPC-ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  description = "Allow Port 22"
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_vpc.main.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  description = "Allow all ip and ports outbound"
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}