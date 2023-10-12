output "jenkins_controller_public_ip" {
  value = aws_instance.jenkins_controller.public_ip
}

output "jenkins_agent_public_ip" {
  value = aws_instance.jenkins_agent.public_ip
}

output "domain_name" {
  value = "https://jenkins.codingwithcarl.com/"
}
