output "ec2_public_ip" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2.public_ip
}

output "ec2_public_dns" {
  description = "The ip of the machine"
  value       = aws_instance.my-ec2.public_dns
}

output "ssh_connect_cli" {
  description = "The command to enter for ssh connect to the machine"
  value       = "ssh -i ~/.ssh/id_rsa_aws ec2-user@${aws_instance.my-ec2.public_dns}"
}

output "arn" {
  description = "Arn of the EC2 instance"
  value = aws_instance.my-ec2.arn
}