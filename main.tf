ldjfsaljlsjsdlkjsjlfjdsjlfjlsjlasdjflskaflas
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "gitfoo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "gitfoo" {
  #ami           = "ami-083654bd07b5da81d" # us-west-2
  ami = lookup(var.instance_type,var.ami_to_select)
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.gitfoo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}

output "some" {
  value = aws_vpc.my_vpc.id
}

# just a comment
