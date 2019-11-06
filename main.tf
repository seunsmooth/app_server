<<<<<<< HEAD:main.tf
data "template_file" "appserver_data" {
=======
data "template_file" "appserver-data" {
>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3:main.tf
  template = "${file("template/appserver-data.tpl")}"
}

resource "aws_instance" "AppServerBox" {
  ami                         = "${var.ami_id}"
  instance_type               = "${var.instance_type}"
  associate_public_ip_address = true
  ebs_optimized               = false
  key_name                    = "${var.key_name}"
<<<<<<< HEAD:main.tf
  user_data                   = "${data.template_file.appserver_data.rendered}"
=======
  user_data                   = "${data.template_file.appserver-data.rendered}"
>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3:main.tf
  #subnet_id                   = "${aws_subnet.public[0]}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${aws_security_group.apps_allow.id}"]

  tags = {
<<<<<<< HEAD:main.tf
    Name = "appserverBox"
=======
    Name = "appserverbox"
>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3:main.tf
  }
}

resource "aws_security_group" "apps_allow" {
<<<<<<< HEAD:main.tf
  name        = "apps_allow_all"
=======
  name        = "app_allow_all"
>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3:main.tf
  description = "Allow all inbound traffic"
  vpc_id      = "${var.vpc_id}"

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
<<<<<<< HEAD:main.tf
=======

>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3:main.tf


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
<<<<<<< HEAD:main.tf
    Name = "Appserver SG"
=======
    Name = "AppServerBox SG"
>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3:main.tf
  }
}

