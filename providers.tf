terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# data "aws_ami" "ubuntu" {
#   most_recent = false

#   filter {
#     name   = "Aws_ami"
#     values = ["rhel/"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "web" {
  ami           = "ami-02ddb77f8f93ca4ca"
  instance_type = "t2.micro"

  tags = {
    Name = "example"
  }
}