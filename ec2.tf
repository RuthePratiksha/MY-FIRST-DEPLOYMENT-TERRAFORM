resource "aws_instance" "web" {
  ami           = "ami-0a5ac53f63249fba0"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}