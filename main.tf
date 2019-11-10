data "template_file" "appserver_data" {
  template = "${file("template/appserver-data.tpl")}"

}

resource "aws_instance" "AppserverBox" {

  ami                         = "${var.ami_id}"
 
  instance_type               = "${var.instance_type}"
 
  associate_public_ip_address = true
 
  ebs_optimized               = false
 
  key_name                    = "${var.key_name}"
 
  user_data                   = "${data.template_file.appserver_data.rendered}"
 
  #subnet_id                   = "${aws_subnet.public[0]}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${aws_security_group.apps_allow.id}"]

  tags = {

    Name = "appserverbox"
  }
}

resource "aws_security_group" "apps_allow" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  #vpc_id      = "$(var.vpc_id}"
  vpc_id       = "vpc-0a306a066bdadc5db"

  ingress {

    from_port   = 22
  
    to_port     = 22

    protocol    = "tcp"
  
    cidr_blocks = ["0.0.0.0/0"]
  
  }

  ingress {
  
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "AppserverBox SG"

  }

}

