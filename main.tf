resource "aws_instance" "jenkins_controller" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  key_name                    = "jenkins-controller"
  subnet_id                   = aws_subnet.subnet_1.id
  vpc_security_group_ids      = [aws_security_group.sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("jenkins-controller-script.sh")
}

resource "aws_instance" "jenkins_agent" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  key_name                    = "jenkins-agent"
  subnet_id                   = aws_subnet.subnet_1.id
  vpc_security_group_ids      = [aws_security_group.sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("jenkins-agent-script.sh")
}
