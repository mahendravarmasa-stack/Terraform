resource "aws_s3_bucket" "dev_bucket" {
  bucket = var.bucket_name
  region = tolist(var.region)[0]

  tags = {
    Name        = var.tags["Name"]
    Environment = var.tags["Environment"]
  }
}

resource "aws_instance" "dev_instance" {
  count                  = var.config.count
  ami                    = var.config.ami
  instance_type          = var.instance_type[0]
  monitoring             = var.config.monitoring
  associate_public_ip_address = var.config.public_ip
  security_groups        = [aws_security_group.ec2_sg.name]

  tags = {
    Ec2 = var.tags["Ec2"]
    Environment = var.tags["Environment"]
}

}

resource "aws_security_group" "ec2_sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    SecurityGroup = var.tags["SecurityGroup"]
    Environment = var.tags["Environment"]
  }
}

resource "aws_security_group_rule" "ec2_ingress_rule" {
  type              = "ingress"
  from_port         = var.ingress_values[0]
  to_port           = var.ingress_values[2]
  protocol          = var.ingress_values[1]
  cidr_blocks       = [var.security_cidr_blocks[0]]
  security_group_id = aws_security_group.ec2_sg.id
}

resource "aws_security_group_rule" "ec2_egress_rule" {
  type              = "egress"
  to_port           = var.egress_values[2]
  protocol          = var.egress_values[1]
  from_port         = var.egress_values[0]
  security_group_id = aws_security_group.ec2_sg.id
  cidr_blocks       = [var.security_cidr_blocks[0]]
}





