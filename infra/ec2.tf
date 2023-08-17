resource "aws_instance" "jenkins_master" {
  ami                    = "ami-04e601abe3e1a910f"
  instance_type          = "t2.micro"
  subnet_id              = module.network.public_subnet1_id
  key_name               = "gp_katoot"
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  user_data              = file("./userdata.sh")
  tags = {
    Name = "${var.use_case}_master"
  }
}