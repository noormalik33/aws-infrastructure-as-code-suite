provider "aws" {
  region = "us-east-1"
}

# Task 6: Data Source (Dynamic AMI Lookup)
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

# Task 5: Calling the Module twice
module "web_server" {
  source        = "./modules/ec2-basic"
  ami_id        = data.aws_ami.ubuntu.id
  instance_name = "WebServer-Module"
}

module "db_server" {
  source        = "./modules/ec2-basic"
  ami_id        = data.aws_ami.ubuntu.id
  instance_name = "DBServer-Module"
}