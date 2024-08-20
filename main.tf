

resource "aws_instance" "node-1" {
    
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"

    key_name = "ec2-connect"
}

resource "aws_instance" "node-2" {

    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"

    key_name = "ec2-connect"
}

data "aws_ami" "ubuntu" {

    most_recent = true

    filter {

        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }

    filter {
        
        name = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}
