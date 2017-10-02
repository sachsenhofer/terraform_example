resource "aws_security_group" "python_backend" {
  name        = "${var.vpc_key}-sg-python-backend"
  description = "Security group for python backend app"
  vpc_id      = "${aws_vpc.vpc.id}"

  ingress {
      from_port   = 5000
      to_port     = 5001
      protocol    = "tcp"
      cidr_blocks = [
        "0.0.0.0/0"
      ]
  }

  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = [
        "0.0.0.0/0"
      ]
  }

  tags {
    Name = "${var.vpc_key}-sg-python-backend"
    VPC = "${var.vpc_key}"
    Terraform = "Terraform"
  }
}
