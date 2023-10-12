data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


data "aws_route53_zone" "r53zone" {
  name         = "codingwithcarl.com"
  private_zone = false
}

data "aws_acm_certificate" "codingwithcarl" {
  domain   = "*.codingwithcarl.com"
  statuses = ["ISSUED"]
}
