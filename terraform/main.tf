 resource "aws_instance" "Ubuntu" {
	ami		= var.ami
	instance_type	= "t2.medium"
	key_name	=  "my-key"
	security_groups = ["${aws_security_group.ubuntusg.name}"]
	

	tags = {
		Name = "Ubuntu-EC2"
	}




	root_block_device {
		volume_size = 30
		volume_type = "gp2"
		encrypted   = false
	}

}
