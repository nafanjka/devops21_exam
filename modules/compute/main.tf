data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "devops21_exam" {
  ami                         = data.aws_ami.ubuntu.id
  subnet_id                   = var.public_subnets[0]
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [var.security_group]
  key_name                    = "my_private_key"
  
  
  user_data                   = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y docker.io
              sudo service docker start
              sudo docker run -d -p 80:80 nafanjka/stas-devops21-final-task:latest
              EOF
  
  tags = {
    Name = "devops21-final-task"
  }
}
