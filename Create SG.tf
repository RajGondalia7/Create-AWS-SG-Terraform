provider "aws" {
  region = "REGION"
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

resource "aws_security_group" "test"{
  name = "Raj"
  
  ingress {
	description = "test"
	from_port = 443
	to_port = 443
	protocol = "tcp"
  }
  
  egress {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
}