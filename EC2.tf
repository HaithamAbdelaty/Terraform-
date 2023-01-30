resource "aws_instance" "virtualmachine" {
  ami = "ami-05bfbece1ed5beb54"
  instance_type = "t2.micro"
  subnet_id  =aws_subnet.haitham-subnet.id
  associate_public_ip_address = "true"
  security_groups =[
aws_security_group.allow-all.id
  ] 

user_data=<<EOF
 #!/bin/bash
 yum update -y
 yum install -y httpd
 systemctl start httpd
 systemctl enable httpd
 echo "<h1>Hello world from $(hostname -f)<h1>" > /var/www/html/index.html
 
 EOF
  tags = {
    "Name" = "haitham"

  }

}
